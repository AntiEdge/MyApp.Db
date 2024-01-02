-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_ingredient_delete] 
	-- Add the parameters for the stored procedure here
	@ingredient_id UNIQUEIDENTIFIER = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE FROM INGREDIENT WHERE INGREDIENT_ID = @ingredient_id;
	DELETE FROM RECIPE_INGREDIENT WHERE INGREDIENT_ID = @ingredient_id;
END
