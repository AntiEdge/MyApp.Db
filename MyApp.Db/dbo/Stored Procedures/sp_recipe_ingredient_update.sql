-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE sp_recipe_ingredient_update
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
	UPDATE RECIPE_INGREDIENT
	SET RECIPE_ID = @recipe_id, INGREDIENT_ID = @ingredient_id
	WHERE RECIPE_INGREDIENT_ID = @recipe_ingredient_id
END
