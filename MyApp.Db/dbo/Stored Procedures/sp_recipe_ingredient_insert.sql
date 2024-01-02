-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE sp_recipe_ingredient_insert
	@recipe_ingredient_id UNIQUEIDENTIFIER = NULL,
	@recipe_id UNIQUEIDENTIFIER = NULL,
	@ingredient_id UNIQUEIDENTIFIER = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	--IF(@ingredient_id IS NOT NULL AND @name IS NOT NULL AND @id_quantity IS NOT NULL)
	INSERT INTO RECIPE_INGREDIENT (RECIPE_INGREDIENT_ID, RECIPE_ID, INGREDIENT_ID)
	VALUES (@recipe_ingredient_id, @recipe_id, @ingredient_id)
END
