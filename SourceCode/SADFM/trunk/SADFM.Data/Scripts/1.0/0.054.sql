-- GetVisitsAndScores '7E6CF193-44B5-4BB4-8DB6-9143B32CF143', '08DA91B2-C6D1-43EE-A026-6DB9ADBEFC18'
CREATE PROCEDURE GetVisitsAndScores
	@patientId uniqueidentifier,
	@scaleId uniqueidentifier
AS

SELECT	VisitDate, ItemId = item.ListItemId, ItemName = item.Name, Score = CONVERT(int, score.Value)
FROM	VisitScore vs
		INNER JOIN Visit v on (vs.VisitId = v.VisitId AND PatientId = @patientId)
		INNER JOIN ListItem score ON (vs.ScoreId = score.ListItemId)
		INNER JOIN ListItem item ON (item.ListItemId = score.ParentId AND item.ParentId = @scaleId)

