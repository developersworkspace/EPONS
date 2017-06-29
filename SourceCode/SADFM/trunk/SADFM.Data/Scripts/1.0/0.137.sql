-- GetCompletedScales '0e12a5b7-819e-418f-b2eb-fd802c750d27'
ALTER PROCEDURE [dbo].[GetCompletedScales]
	@patientId uniqueidentifier
AS
SELECT	VisitDate,
		ScaleId		= s.ListItemId,
		ScaleName	= s.Name,
		ScaleItemId	= si.ListItemId,
		Value		= CONVERT(int, lis.Value),
		Iteration	= CONVERT(int, null),
		IsDone		= CONVERT(bit, null),
		WorkingSet	= CONVERT(bit, null)
INTO	#tmp
FROM	VisitScore vs
		INNER JOIN Visit v ON (vs.VisitId = v.VisitId AND v.PatientId = @patientId)
		INNER JOIN ListItem lis ON (lis.ListItemId = vs.ScoreId)
		INNER JOIN ListItem si ON (si.ListItemId = lis.ParentId)
		INNER JOIN LIstItem s ON (s.ListItemId = si.ParentId)

DECLARE @loop int
SET	@loop = 0
WHILE EXISTS(SELECT * FROM #tmp WHERE Iteration IS NULL) BEGIN
	SET @loop = @loop + 1
	IF (@loop = 1000) BEGIN
		RAISERROR ('Infinite loop detected in calculating completed scales', 15, 0)
		RETURN
	END

	SELECT * FROM #tmp WHERE Iteration is null

	select * from #tmp where scalename = 'beta'
	-- where scaleid='BE5EBAD5-E6D5-4381-A1A6-93FEF86DBBE4' 
	order by visitdate, ScaleName

	-- Add to working set
	UPDATE	t
	SET		t.WorkingSet = 1
	FROM	#tmp t
			INNER JOIN (
				SELECT	ScaleId, VisitDate = MIN(VisitDate)
				FROM	#tmp
				WHERE	WorkingSet IS NULL AND Iteration IS NULL
				GROUP	BY ScaleId
			) x ON (t.ScaleId = x.ScaleId AND t.VisitDate = x.VisitDate)

	-- Check if scale is complete, then mark and clear Working Set indicator
	UPDATE	t
	SET		t.Iteration = ISNULL((SELECT MAX(Iteration) FROM #tmp WHERE ScaleId = t.ScaleId), 0) + 1,
			t.WorkingSet = NULL,
			t.IsDone = 1
	FROM	#tmp t
			INNER JOIN	 (
				SELECT	ScaleId
				FROM	(
							SELECT	ScaleId, Entered = COUNT(*), Expected = (SELECT COUNT(*) FROM ListItem WHERE ParentId = ScaleId)
							FROM	(
										SELECT	DISTINCT ScaleId, ScaleItemId
										FROM	#tmp
										WHERE	WorkingSet = 1
									) x
							GROUP	BY ScaleId
						) y
				WHERE	Entered = Expected
			) s ON (t.ScaleId = s.ScaleId AND WorkingSet = 1)
	
	UPDATE	t
	SET		t.Iteration = ISNULL((SELECT MAX(Iteration) FROM #tmp WHERE ScaleId = t.ScaleId), 0) + 1,
			t.IsDone = 0
	FROM	#tmp t
	WHERE	WorkingSet = 1 AND NOT EXISTS(SELECT * FROM #tmp WHERE ScaleId = t.ScaleId AND VisitDate > (SELECT MAX(VisitDate) FROM Visit WHERE ScaleId = t.ScaleId AND WorkingSet = 1))
END

SELECT	ScaleId,
		Iteration,
		ScaleItemId,
		FirstVisitDate = MIN(VisitDate),
		VisitDate = MAX(VisitDate),
		Value = MIN(Value),
		VisitCount = (SELECT COUNT(DISTINCT VisitDate) FROM #tmp WHERE ScaleId = t.ScaleId AND Iteration = t.Iteration)
FROM	#tmp t
WHERE	IsDone = 1
GROUP	BY ScaleId,
		Iteration,
		ScaleItemId

DROP TABLE #tmp;