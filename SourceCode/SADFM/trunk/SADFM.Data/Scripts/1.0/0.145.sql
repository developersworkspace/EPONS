
CREATE PROCEDURE [dbo].[GetCompletedScalesWithParameters]
	@patientId uniqueidentifier,
	@startDate DATE,
	@endDate DATE
AS

SELECT	VisitDate,
		ScaleId		= s.ListItemId,
		ScaleName	= s.Name,
		ScaleItemId	= si.ListItemId,
		Value		= CONVERT(int, lis.Value),
		Iteration	= CONVERT(int, null),
		IsDone		= CONVERT(bit, null),
		WorkingSet	= CONVERT(bit, null),
		CaseId      = v.CaseId
INTO	#tmpTable
FROM	VisitScore vs
		INNER JOIN Visit v ON (vs.VisitId = v.VisitId AND v.PatientId = @patientId)
		AND v.VisitDate >= @startDate 
		AND v.VisitDate <= @endDate
		INNER JOIN ListItem lis ON (lis.ListItemId = vs.ScoreId)
		INNER JOIN ListItem si ON (si.ListItemId = lis.ParentId)
		INNER JOIN ListItem s ON (s.ListItemId = si.ParentId) 

DECLARE @loop int
SET	@loop = 0
WHILE EXISTS(SELECT * FROM #tmpTable WHERE Iteration IS NULL) BEGIN
	SET @loop = @loop + 1
	IF (@loop = 1000) BEGIN
		RAISERROR ('Infinite loop detected in calculating completed scales', 15, 0)
		RETURN
	END

	-- Add to working set
	UPDATE	t
	SET		t.WorkingSet = 1
	FROM	#tmpTable t
			INNER JOIN (
				SELECT	ScaleId, VisitDate = MIN(VisitDate)
				FROM	#tmpTable
				WHERE	WorkingSet IS NULL AND Iteration IS NULL
				GROUP	BY ScaleId
			) x ON (t.ScaleId = x.ScaleId AND t.VisitDate = x.VisitDate)

	-- Check if scale is complete, then mark and clear Working Set indicator
	UPDATE	t
	SET		t.Iteration = ISNULL((SELECT MAX(Iteration) FROM #tmpTable WHERE ScaleId = t.ScaleId), 0) + 1,
			t.WorkingSet = NULL,
			t.IsDone = 1
	FROM	#tmpTable t
			INNER JOIN	 (
				SELECT	ScaleId
				FROM	(
							SELECT	ScaleId, Entered = COUNT(*), Expected = (SELECT COUNT(*) FROM ListItem WHERE ParentId = ScaleId)
							FROM	(
										SELECT	DISTINCT ScaleId, ScaleItemId
										FROM	#tmpTable
										WHERE	WorkingSet = 1
									) x
							GROUP	BY ScaleId
						) y
				WHERE	Entered = Expected
			) s ON (t.ScaleId = s.ScaleId AND WorkingSet = 1)
	
	UPDATE	t
	SET		t.Iteration = ISNULL((SELECT MAX(Iteration) FROM #tmpTable WHERE ScaleId = t.ScaleId), 0) + 1,
			t.IsDone = 0
	FROM	#tmpTable t
	WHERE	WorkingSet = 1 AND NOT EXISTS(SELECT * FROM #tmpTable WHERE ScaleId = t.ScaleId AND VisitDate > (SELECT MAX(VisitDate) FROM Visit WHERE ScaleId = t.ScaleId AND WorkingSet = 1))
END

SELECT	ScaleId,
		Iteration,
		ScaleItemId,
		FirstVisitDate = (SELECT MIN(VisitDate) FROM #tmpTable WHERE ScaleId = t.ScaleId AND Iteration = t.Iteration),
		VisitDate = (SELECT MAX(VisitDate) FROM #tmpTable WHERE ScaleId = t.ScaleId AND Iteration = t.Iteration),
		Value = MIN(Value),
		VisitCount = (SELECT COUNT(DISTINCT VisitDate) FROM #tmpTable WHERE ScaleId = t.ScaleId AND Iteration = t.Iteration),
		CaseId = t.CaseId
FROM	#tmpTable t
WHERE	IsDone = 1
GROUP	BY ScaleId,
		Iteration,
		ScaleItemId,
		CaseId

DROP TABLE #tmpTable;
