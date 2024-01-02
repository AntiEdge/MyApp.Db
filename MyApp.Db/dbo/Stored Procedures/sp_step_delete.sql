-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_step_delete] 
	@step_id UNIQUEIDENTIFIER = NULL,
	@recipe_id UNIQUEIDENTIFIER = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
	IF(@recipe_id IS NOT NULL)
		
		DELETE FROM STEP WHERE RECIPE_ID = @recipe_id;

	ELSE

		DELETE FROM STEP WHERE STEP_ID = @step_id;
END
