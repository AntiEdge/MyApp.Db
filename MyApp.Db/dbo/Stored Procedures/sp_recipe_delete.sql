-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE sp_recipe_delete 
	@recipe_id UNIQUEIDENTIFIER = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE FROM RECIPE WHERE RECIPE_ID = @recipe_id;
	DELETE FROM RECIPE_INGREDIENT WHERE RECIPE_ID = @recipe_id;
END
