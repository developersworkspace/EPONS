INSERT	INTO ScoreDefinition
		(ScaleValueId, FunderExplanationId, ProviderExplanationId)
SELECT	lisiv.ListItemId, (SELECT ListItemId FROM ListItem WHERE ParentId = lisiv.ParentId AND Name = lisiv.Name + 'FE'), (SELECT ListItemId FROM ListItem WHERE ParentId = lisiv.ParentId AND Name = lisiv.Name + 'PE')
FROM	ListItem lisp
		INNER JOIN ListItem lis ON (lisp.Name = 'Scale' AND lisp.ParentId IS NULL AND lis.ParentId = lisp.ListItemId)
		INNER JOIN ListItem lisi ON (lisi.ParentId = lis.ListItemId)
		INNER JOIN LIstItem lisiv ON (lisiv.ParentId = lisi.ListItemId AND lisiv.Value IS NOT NULL)