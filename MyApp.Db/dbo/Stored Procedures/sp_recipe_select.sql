-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE sp_recipe_select 
	@recipe_id UNIQUEIDENTIFIER = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF(@recipe_id IS NOT NULL)
		
		SELECT r.*, i.*, s.* FROM RECIPE r (NOLOCK)		
		INNER JOIN RECIPE_INGREDIENT ri (NOLOCK) ON r.RECIPE_ID = ri.RECIPE_ID
		INNER JOIN INGREDIENT i (NOLOCK) ON ri.INGREDIENT_ID = i.INGREDIENT_ID
		INNER JOIN STEP s (NOLOCK) ON r.RECIPE_ID = s.RECIPE_ID
		WHERE r.RECIPE_ID = @recipe_id

	ELSE

		SELECT r.*, i.*, s.* FROM RECIPE r (NOLOCK)		
		INNER JOIN RECIPE_INGREDIENT ri (NOLOCK) ON r.RECIPE_ID = ri.RECIPE_ID
		INNER JOIN INGREDIENT i (NOLOCK) ON ri.INGREDIENT_ID = i.INGREDIENT_ID
		INNER JOIN STEP s (NOLOCK) ON r.RECIPE_ID = s.RECIPE_ID
END
