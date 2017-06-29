CREATE PROCEDURE SetLabel
	@Language varchar(255),
	@Key varchar(255),
	@Label nvarchar(255)
AS
	DECLARE	@LanguageId uniqueidentifier,
			@KeyId uniqueidentifier

	SELECT	@LanguageId = li.ListItemId
	FROM	ListItem li
			INNER JOIN ListItem lip ON (li.ParentId = lip.ListItemId AND lip.Name = 'Language' AND li.Code = @Language)

	IF (@LanguageId IS NULL) BEGIN
		RAISERROR ('Language not found', 18, 1)
		RETURN
	END

	SELECT	@KeyId = li.ListItemId
	FROM	ListItem li
			INNER JOIN ListItem lip ON (li.ParentId = lip.ListItemId AND lip.Name = 'Label' AND li.Name = @Key)

	IF (@KeyId IS NULL) BEGIN
		SET		@KeyId = NEWID()

		INSERT
		INTO	ListItem (ListItemId, ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
		SELECT	@KeyId, lil.ListItemId, @Key,'Label for ' + @Key, lisa.ListItemId, getdate(), (SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp)
		FROM	ListItem lil
				INNER JOIN ListItem lis ON (lil.Name ='Label' AND lil.ParentId IS NULL AND lis.Name = 'Status' AND lis.ParentId IS NULL)
				INNER JOIN ListItem lisa ON (lis.ListItemId = lisa.ParentId AND lisa.Name = 'Active')
	END

	IF EXISTS(SELECT * FROM ListItemLabel WHERE ListItemId = @KeyId AND LanguageId = @LanguageId) BEGIN
		UPDATE	ListItemLabel
		SET		Label = @Label
		WHERE	ListItemId = @KeyId
				AND LanguageId = @LanguageId
	END ELSE BEGIN
		INSERT
		INTO	ListItemLabel
				(ListItemId, LanguageId, Label)
		VALUES	(@KeyId, @LanguageId, @Label)
	END;