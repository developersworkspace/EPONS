
IF NOT EXISTS (SELECT * FROM [Account] WHERE EmailAddress = 'rudi@sadfm.co.za')
INSERT
INTO	Account 
		(Username, EmailAddress, FirstName, LastName, [Password], StatusId, LastUpdateTimestamp, LastUpdateAccountId, AccountTypeId, FirstSignIn)
SELECT	'rudi', 'rudi@sadfm.co.za','Rudi','White','A0-6B-6F-AA-9D-8E-96-CD-51-03-79-CD-20-71-01-80', lis.ListItemId, getdate(), 
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp), (SELECT ListItemId FROM ListItem WHERE Name='SuperAdmin' AND ParentId = (SELECT ListItemId FROM ListItem WHERE Name='AccountType' AND ParentId IS NULL)), 0
FROM	ListItem lisp
		INNER JOIN ListItem lis ON (lisp.Name ='Status' AND lisp.ParentId IS NULL AND lis.ParentId = lisp.ListItemId AND lis.Name ='Active');
