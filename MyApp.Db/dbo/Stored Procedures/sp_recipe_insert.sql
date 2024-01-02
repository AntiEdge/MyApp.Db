-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE sp_recipe_insert 
	-- Add the parameters for the stored procedure here
	@recipe_id UNIQUEIDENTIFIER = NULL, 
	@name VARCHAR(50) = NULL,
	@nb_person SMALLINT = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	--IF(@ingredient_id IS NOT NULL AND @name IS NOT NULL AND @id_quantity IS NOT NULL)
	INSERT INTO RECIPE (RECIPE_ID, NAME, NB_PERSON)
	VALUES (@recipe_id, @name, @nb_person)
END
