-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE sp_recipe_ingredient_select
	@recipe_ingredient_id UNIQUEIDENTIFIER = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF(@recipe_ingredient_id IS NOT NULL)
		
		SELECT * FROM RECIPE_INGREDIENT ri (NOLOCK)
		WHERE ri.RECIPE_INGREDIENT_ID = @recipe_ingredient_id

	ELSE

		SELECT * FROM RECIPE_INGREDIENT ri (NOLOCK)
END
