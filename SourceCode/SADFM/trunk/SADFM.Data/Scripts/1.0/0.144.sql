INSERT INTO [PatientScale] (PatientId, ScaleId, FrequencyId) 
SELECT C.PatientId, CS.ScaleId, CS.FrequencyId
FROM [CaseScale] AS CS
JOIN [Case] AS C
ON C.CaseId = CS.CaseId

DROP TABLE [CaseScale]