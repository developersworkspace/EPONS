ALTER TABLE Patient ADD AdmitFromId uniqueidentifier, DischargeToId uniqueidentifier, ResidentialEnvironmentId uniqueidentifier;

ALTER TABLE Patient ADD CONSTRAINT FK_Patient_AdmitFrom FOREIGN KEY (AdmitFromId) REFERENCES ListItem (ListItemId);
ALTER TABLE Patient ADD CONSTRAINT FK_Patient_DischargeTo FOREIGN KEY (DischargeToId) REFERENCES ListItem (ListItemId);
ALTER TABLE Patient ADD CONSTRAINT FK_Patient_ResidentialEnvironment FOREIGN KEY (ResidentialEnvironmentId) REFERENCES ListItem (ListItemId);