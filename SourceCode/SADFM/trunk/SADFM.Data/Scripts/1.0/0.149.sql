UPDATE [PatientScale] SET [StatusId] = (SELECT l1.ListItemId
  FROM [ListItem] AS l1
  INNER JOIN [ListItem] AS l2
  ON l1.ParentId = l2.ListItemId 
  AND l2.Name = 'Status'
  AND l1.Name = 'Active');

