INSERT INTO [ScaleItemHeader] (ScaleItemId, Name) 
  SELECT l1.ListItemId,'B_bath'
  FROM [ListItem] AS l1 
  INNER JOIN [ListItem] AS l2
  ON l1.ParentId = l2.ListItemId
  AND l1.Name = 'Bathing'
  AND l2.Name = 'Beta'
  INNER JOIN [ListItem] AS l3
  ON l2.ParentId = l3.ListItemId
  AND l3.Name = 'Scale' AND l3.ParentId IS NULL

  INSERT INTO [ScaleItemHeader] (ScaleItemId, Name) 
  SELECT l1.ListItemId,'B_eat'
  FROM [ListItem] AS l1 
  INNER JOIN [ListItem] AS l2
  ON l1.ParentId = l2.ListItemId
  AND l1.Name = 'Eating'
  AND l2.Name = 'Beta'
  INNER JOIN [ListItem] AS l3
  ON l2.ParentId = l3.ListItemId
  AND l3.Name = 'Scale' AND l3.ParentId IS NULL

  INSERT INTO [ScaleItemHeader] (ScaleItemId, Name) 
  SELECT l1.ListItemId,'B_groom'
  FROM [ListItem] AS l1 
  INNER JOIN [ListItem] AS l2
  ON l1.ParentId = l2.ListItemId
  AND l1.Name = 'Grooming'
  AND l2.Name = 'Beta'
  INNER JOIN [ListItem] AS l3
  ON l2.ParentId = l3.ListItemId
  AND l3.Name = 'Scale' AND l3.ParentId IS NULL

  INSERT INTO [ScaleItemHeader] (ScaleItemId, Name) 
  SELECT l1.ListItemId,'B_dress_upper'
  FROM [ListItem] AS l1 
  INNER JOIN [ListItem] AS l2
  ON l1.ParentId = l2.ListItemId
  AND l1.Name = 'Dressing - Upper Body'
  AND l2.Name = 'Beta'
  INNER JOIN [ListItem] AS l3
  ON l2.ParentId = l3.ListItemId
  AND l3.Name = 'Scale' AND l3.ParentId IS NULL

  INSERT INTO [ScaleItemHeader] (ScaleItemId, Name) 
  SELECT l1.ListItemId,'B_dress_lower'
  FROM [ListItem] AS l1 
  INNER JOIN [ListItem] AS l2
  ON l1.ParentId = l2.ListItemId
  AND l1.Name = 'Dressing - Lower Body'
  AND l2.Name = 'Beta'
  INNER JOIN [ListItem] AS l3
  ON l2.ParentId = l3.ListItemId
  AND l3.Name = 'Scale' AND l3.ParentId IS NULL


  INSERT INTO [ScaleItemHeader] (ScaleItemId, Name) 
  SELECT l1.ListItemId,'B_toilet'
  FROM [ListItem] AS l1 
  INNER JOIN [ListItem] AS l2
  ON l1.ParentId = l2.ListItemId
  AND l1.Name = 'Toileting'
  AND l2.Name = 'Beta'
  INNER JOIN [ListItem] AS l3
  ON l2.ParentId = l3.ListItemId
  AND l3.Name = 'Scale' AND l3.ParentId IS NULL

  INSERT INTO [ScaleItemHeader] (ScaleItemId, Name) 
  SELECT l1.ListItemId,'B_bladder'
  FROM [ListItem] AS l1 
  INNER JOIN [ListItem] AS l2
  ON l1.ParentId = l2.ListItemId
  AND l1.Name = 'Bladder Management - Part 1 - Level of Assistance'
  AND l2.Name = 'Beta'
  INNER JOIN [ListItem] AS l3
  ON l2.ParentId = l3.ListItemId
  AND l3.Name = 'Scale' AND l3.ParentId IS NULL

  INSERT INTO [ScaleItemHeader] (ScaleItemId, Name) 
  SELECT l1.ListItemId,'B_bowel'
  FROM [ListItem] AS l1 
  INNER JOIN [ListItem] AS l2
  ON l1.ParentId = l2.ListItemId
  AND l1.Name = 'Bowel Management - Part 1 - Level of Assistance'
  AND l2.Name = 'Beta'
  INNER JOIN [ListItem] AS l3
  ON l2.ParentId = l3.ListItemId
  AND l3.Name = 'Scale' AND l3.ParentId IS NULL

  INSERT INTO [ScaleItemHeader] (ScaleItemId, Name) 
  SELECT l1.ListItemId,'B_transfer_bed'
  FROM [ListItem] AS l1 
  INNER JOIN [ListItem] AS l2
  ON l1.ParentId = l2.ListItemId
  AND l1.Name = 'Transfers: Bed, Chair & Wheelchair'
  AND l2.Name = 'Beta'
  INNER JOIN [ListItem] AS l3
  ON l2.ParentId = l3.ListItemId
  AND l3.Name = 'Scale' AND l3.ParentId IS NULL

  INSERT INTO [ScaleItemHeader] (ScaleItemId, Name) 
  SELECT l1.ListItemId,'B_transfer_toilet'
  FROM [ListItem] AS l1 
  INNER JOIN [ListItem] AS l2
  ON l1.ParentId = l2.ListItemId
  AND l1.Name = 'Transfers: Toilet'
  AND l2.Name = 'Beta'
  INNER JOIN [ListItem] AS l3
  ON l2.ParentId = l3.ListItemId
  AND l3.Name = 'Scale' AND l3.ParentId IS NULL

  INSERT INTO [ScaleItemHeader] (ScaleItemId, Name) 
  SELECT l1.ListItemId,'B_transfer_tub'
  FROM [ListItem] AS l1 
  INNER JOIN [ListItem] AS l2
  ON l1.ParentId = l2.ListItemId
  AND l1.Name = 'Transfers: Bath or Shower'
  AND l2.Name = 'Beta'
  INNER JOIN [ListItem] AS l3
  ON l2.ParentId = l3.ListItemId
  AND l3.Name = 'Scale' AND l3.ParentId IS NULL

  INSERT INTO [ScaleItemHeader] (ScaleItemId, Name) 
  SELECT l1.ListItemId,'B_loco_walk'
  FROM [ListItem] AS l1 
  INNER JOIN [ListItem] AS l2
  ON l1.ParentId = l2.ListItemId
  AND l1.Name = 'Locomotion: Walk / Wheelchair'
  AND l2.Name = 'Beta'
  INNER JOIN [ListItem] AS l3
  ON l2.ParentId = l3.ListItemId
  AND l3.Name = 'Scale' AND l3.ParentId IS NULL

  INSERT INTO [ScaleItemHeader] (ScaleItemId, Name) 
  SELECT l1.ListItemId,'B_loco_stairs'
  FROM [ListItem] AS l1 
  INNER JOIN [ListItem] AS l2
  ON l1.ParentId = l2.ListItemId
  AND l1.Name = 'Locomotion: Stairs'
  AND l2.Name = 'Beta'
  INNER JOIN [ListItem] AS l3
  ON l2.ParentId = l3.ListItemId
  AND l3.Name = 'Scale' AND l3.ParentId IS NULL

  INSERT INTO [ScaleItemHeader] (ScaleItemId, Name) 
  SELECT l1.ListItemId,'B_loco_comprehend'
  FROM [ListItem] AS l1 
  INNER JOIN [ListItem] AS l2
  ON l1.ParentId = l2.ListItemId
  AND l1.Name = 'Comprehension'
  AND l2.Name = 'Beta'
  INNER JOIN [ListItem] AS l3
  ON l2.ParentId = l3.ListItemId
  AND l3.Name = 'Scale' AND l3.ParentId IS NULL

  INSERT INTO [ScaleItemHeader] (ScaleItemId, Name) 
  SELECT l1.ListItemId,'B_express'
  FROM [ListItem] AS l1 
  INNER JOIN [ListItem] AS l2
  ON l1.ParentId = l2.ListItemId
  AND l1.Name = 'Expression'
  AND l2.Name = 'Beta'
  INNER JOIN [ListItem] AS l3
  ON l2.ParentId = l3.ListItemId
  AND l3.Name = 'Scale' AND l3.ParentId IS NULL

  INSERT INTO [ScaleItemHeader] (ScaleItemId, Name) 
  SELECT l1.ListItemId,'B_social'
  FROM [ListItem] AS l1 
  INNER JOIN [ListItem] AS l2
  ON l1.ParentId = l2.ListItemId
  AND l1.Name = 'Social Interaction'
  AND l2.Name = 'Beta'
  INNER JOIN [ListItem] AS l3
  ON l2.ParentId = l3.ListItemId
  AND l3.Name = 'Scale' AND l3.ParentId IS NULL

  INSERT INTO [ScaleItemHeader] (ScaleItemId, Name) 
  SELECT l1.ListItemId,'B_problem'
  FROM [ListItem] AS l1 
  INNER JOIN [ListItem] AS l2
  ON l1.ParentId = l2.ListItemId
  AND l1.Name = 'Problem Solving'
  AND l2.Name = 'Beta'
  INNER JOIN [ListItem] AS l3
  ON l2.ParentId = l3.ListItemId
  AND l3.Name = 'Scale' AND l3.ParentId IS NULL

  INSERT INTO [ScaleItemHeader] (ScaleItemId, Name) 
  SELECT l1.ListItemId,'B_memory'
  FROM [ListItem] AS l1 
  INNER JOIN [ListItem] AS l2
  ON l1.ParentId = l2.ListItemId
  AND l1.Name = 'Memory'
  AND l2.Name = 'Beta'
  INNER JOIN [ListItem] AS l3
  ON l2.ParentId = l3.ListItemId
  AND l3.Name = 'Scale' AND l3.ParentId IS NULL

  