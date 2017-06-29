UPDATE	Patient
SET		CountryId = (SELECT liic.ListItemId FROM ListItem liic INNER JOIN ListItem liat ON (liat.ParentId IS NULL AND liat.Name = 'Country' AND liic.ParentId = liat.ListItemId AND liic.Name='SouthAfrica'));
