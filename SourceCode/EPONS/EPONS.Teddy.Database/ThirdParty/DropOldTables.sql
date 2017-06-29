BEGIN TRAN


ALTER TABLE dbo.[ScalePermission] DROP CONSTRAINT FK_ScalePermission_Account
ALTER TABLE dbo.[AccountRole] DROP CONSTRAINT FK_AccountRole_Account
ALTER TABLE dbo.[ListItem] DROP CONSTRAINT FK_ListItem_LastUpdateAccount
ALTER TABLE dbo.[CaseProvider] DROP CONSTRAINT FK_CaseProvider_Account
ALTER TABLE dbo.[Visit] DROP CONSTRAINT FK_Visit_Account
ALTER TABLE dbo.[Session] DROP CONSTRAINT FK_Session_Account
ALTER TABLE dbo.[Audit] DROP CONSTRAINT FK_Audit_AccountId
ALTER TABLE dbo.[PatientScale] DROP CONSTRAINT FK_PatientScale_Account
ALTER TABLE dbo.[ProviderAccountPermission] DROP CONSTRAINT FK_ProviderAccountPermission_Account
ALTER TABLE dbo.[FunderAccountPermission] DROP CONSTRAINT FK_FunderAccountPermission_Account
ALTER TABLE dbo.[PatientProvider] DROP CONSTRAINT FK_PatientProvider_Account
ALTER TABLE dbo.[Patient] DROP CONSTRAINT FK_Patient_LastUpdateAccount
ALTER TABLE dbo.[Case] DROP CONSTRAINT FK_Case_LastUpdateAccount
ALTER TABLE dbo.[CaseProvider] DROP CONSTRAINT FK_CaseProvider_Case
ALTER TABLE dbo.[ScalePermission] DROP CONSTRAINT FK_ScalePermission_ListItem
ALTER TABLE dbo.[ListItem] DROP CONSTRAINT FK_ListItem_Parent
ALTER TABLE dbo.[ListItem] DROP CONSTRAINT FK_ListItem_Status
ALTER TABLE dbo.[ListItemLabel] DROP CONSTRAINT FK_ListItemLabel_ListItem
ALTER TABLE dbo.[AccountRole] DROP CONSTRAINT FK_AccountRole_Role
ALTER TABLE dbo.[ListItemLabel] DROP CONSTRAINT FK_ListItemLabel_Language
ALTER TABLE dbo.[Case] DROP CONSTRAINT FK_ImpairmentGroup_ListItem
ALTER TABLE dbo.[Account] DROP CONSTRAINT FK_Account_Status
ALTER TABLE dbo.[Patient] DROP CONSTRAINT FK_Province_ListItem
ALTER TABLE dbo.[Account] DROP CONSTRAINT FK_Account_AccountType
ALTER TABLE dbo.[Patient] DROP CONSTRAINT FK_City_ListItem
ALTER TABLE dbo.[ProviderServiceType] DROP CONSTRAINT FK_ProviderServiceType_Province
ALTER TABLE dbo.[ProviderServiceType] DROP CONSTRAINT FK_ProviderServiceType_City
ALTER TABLE dbo.[Patient] DROP CONSTRAINT FK_Patient_AdmitFrom
ALTER TABLE dbo.[Account] DROP CONSTRAINT FK_Account_Language
ALTER TABLE dbo.[Patient] DROP CONSTRAINT FK_Patient_DischargeTo
ALTER TABLE dbo.[Patient] DROP CONSTRAINT FK_Patient_ResidentialEnvironment
ALTER TABLE dbo.[PatientSupportService] DROP CONSTRAINT FK_PatientSupportService_Provider
ALTER TABLE dbo.[Case] DROP CONSTRAINT FK_Case_AdmitFrom
ALTER TABLE dbo.[Account] DROP CONSTRAINT FK_Account_Title
ALTER TABLE dbo.[Audit] DROP CONSTRAINT FK_Audit_ChangeType
ALTER TABLE dbo.[FunderScheme] DROP CONSTRAINT FK_Funder
ALTER TABLE dbo.[FunderScheme] DROP CONSTRAINT FK_Scheme
ALTER TABLE dbo.[PatientScale] DROP CONSTRAINT FK_PatientScale_Scale
ALTER TABLE dbo.[PatientScale] DROP CONSTRAINT FK_PatientScale_Frequency
ALTER TABLE dbo.[ProviderUnit] DROP CONSTRAINT FK_ProviderUnit_Unit
ALTER TABLE dbo.[PatientScale] DROP CONSTRAINT FK_PatientScale_Status
ALTER TABLE dbo.[ProviderAccountPermission] DROP CONSTRAINT FK_ProviderAccountPermission_Permission
ALTER TABLE dbo.[ScaleItemHeader] DROP CONSTRAINT FK_ScaleItemHeader_ScaleItem
ALTER TABLE dbo.[FunderAccountPermission] DROP CONSTRAINT FK_FunderAccountPermission_Funder
ALTER TABLE dbo.[PatientImpairmentGroupHistory] DROP CONSTRAINT FK_ImpairmentGroup
ALTER TABLE dbo.[FunderAccountPermission] DROP CONSTRAINT FK_FunderAccountPermission_Permission
ALTER TABLE dbo.[Patient] DROP CONSTRAINT FK_Patient_Gender
ALTER TABLE dbo.[Patient] DROP CONSTRAINT FK_Patient_Race
ALTER TABLE dbo.[Patient] DROP CONSTRAINT FK_Patient_MedicalScheme
ALTER TABLE dbo.[Patient] DROP CONSTRAINT FK_Patient_Title
ALTER TABLE dbo.[Account] DROP CONSTRAINT FK_ProfessionalBody
ALTER TABLE dbo.[Patient] DROP CONSTRAINT FK_Patient_Country
ALTER TABLE dbo.[Case] DROP CONSTRAINT FK_Case_ICD10
ALTER TABLE dbo.[PatientProvider] DROP CONSTRAINT FK_ReasonForAdmission
ALTER TABLE dbo.[ScoreDefinition] DROP CONSTRAINT FK_ScoreDefinition_ScaleValue
ALTER TABLE dbo.[ScoreDefinition] DROP CONSTRAINT FK_ScoreDefinition_FunderExplanation
ALTER TABLE dbo.[ScoreDefinition] DROP CONSTRAINT FK_ScoreDefinition_ProviderExplanation
ALTER TABLE dbo.[VisitScore] DROP CONSTRAINT FK_VisitScore_Score
ALTER TABLE dbo.[ProviderServiceType] DROP CONSTRAINT FK_ProviderServiceType_ServiceType
ALTER TABLE dbo.[ProviderServiceType] DROP CONSTRAINT FK_ProviderServiceType_Country
ALTER TABLE dbo.[ProviderServiceTypeScale] DROP CONSTRAINT FK_ProviderServiceTypeScale_Scale
ALTER TABLE dbo.[PatientSupportService] DROP CONSTRAINT FK_PatientSupportService_Patient
ALTER TABLE dbo.[PatientScale] DROP CONSTRAINT FK_PatientScale_Patient
ALTER TABLE dbo.[PatientImpairmentGroupHistory] DROP CONSTRAINT FK_Patient
ALTER TABLE dbo.[PatientProvider] DROP CONSTRAINT FK_PatientProvider_Patient
ALTER TABLE dbo.[Case] DROP CONSTRAINT FK_Case_Patient
ALTER TABLE dbo.[Visit] DROP CONSTRAINT FK_Visit_PatientId
ALTER TABLE dbo.[CaseProvider] DROP CONSTRAINT FK_CaseProvider_Provider
ALTER TABLE dbo.[ProviderUnit] DROP CONSTRAINT FK_ProviderUnit_Provider
ALTER TABLE dbo.[PatientScale] DROP CONSTRAINT FK_PatientScale_Provider
ALTER TABLE dbo.[ProviderAccountPermission] DROP CONSTRAINT FK_ProviderAccountPermission_Provider
ALTER TABLE dbo.[PatientProvider] DROP CONSTRAINT FK_PatientProvider_Provider
ALTER TABLE dbo.[ProviderServiceType] DROP CONSTRAINT FK_ProviderServiceType_Provider
ALTER TABLE dbo.[ProviderServiceTypeScale] DROP CONSTRAINT FK_ProviderServiceTypeScale_ProviderServiceType
ALTER TABLE dbo.[VisitScore] DROP CONSTRAINT FK_VisitScore_Visit
ALTER TABLE dbo.[VisitAttachment] DROP CONSTRAINT FK_VisitAttachment_Visit

DROP TABLE [dbo].[Provider]
DROP TABLE [dbo].[CaseProvider]
DROP TABLE [dbo].[FunderAccountPermission]
DROP TABLE [dbo].[FunderScheme]
DROP TABLE [dbo].[Patient]
DROP TABLE [dbo].[PatientImpairmentGroupHistory]
DROP TABLE [dbo].[PatientProvider]
DROP TABLE [dbo].[PatientScale]
DROP TABLE [dbo].[PatientSupportService]
DROP TABLE [dbo].[ListItem]
DROP TABLE [dbo].[ListItemLabel]
DROP TABLE [dbo].[Case]
DROP TABLE [dbo].[Account]
DROP TABLE [dbo].[AccountRole]
DROP TABLE [dbo].[Audit]
DROP TABLE [dbo].[ProviderAccountPermission]
DROP TABLE [dbo].[ProviderServiceType]
DROP TABLE [dbo].[ProviderServiceTypeScale]
DROP TABLE [dbo].[ProviderUnit]
DROP TABLE [dbo].[ScaleItemHeader]
DROP TABLE [dbo].[ScalePermission]
DROP TABLE [dbo].[ScoreDefinition]
DROP TABLE [dbo].[Session]
DROP TABLE [dbo].[UserFacility]
DROP TABLE [dbo].[Visit]
DROP TABLE [dbo].[VisitAttachment]
DROP TABLE [dbo].[VisitScore]

ROLLBACK TRAN