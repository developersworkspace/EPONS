INSERT INTO [PatientProvider] 
(PatientId,
CaseId,
ProviderId,
AccountId,
CreatedTimestamp,
AssignedTimestamp,
DischargeTimestamp,
LastUpdateTimestamp,
LastUpdateAccountId)

SELECT p.PatientId, c.CaseId, cp.ProviderId, cp.AccountId,cp.CreatedTimestamp,cp.AssignedTimestamp,cp.DischargeTimestamp,cp.LastUpdatedTimestamp,cp.LastUpdatedAccountId FROM [CaseProvider] AS cp
INNER JOIN [Case] AS c
ON cp.CaseId = c.CaseId
INNER JOIN [Patient] AS P
ON c.PatientId = p.PatientId;
