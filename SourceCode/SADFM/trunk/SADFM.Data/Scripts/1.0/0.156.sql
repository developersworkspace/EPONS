UPDATE [ListItem] SET
[Name] = 'Luderitz', [Description] = 'Luderitz' 
WHERE ListItemId = (SELECT luderitz.ListItemId 
FROM [ListItem] AS countryItem
JOIN [ListItem] AS namibia 
ON countryItem.Name = 'Country'
AND namibia.Name = 'Namibia' 
AND countryItem.ListItemId = namibia.ParentId
JOIN [ListItem] AS karas
ON karas.ParentId = namibia.ListItemId
AND karas.Name = '!Karas'
JOIN [ListItem] AS luderitz
ON luderitz.ParentId = karas.ListItemId
AND luderitz.Name = '!Nami?Nûs (Lüderitz)');