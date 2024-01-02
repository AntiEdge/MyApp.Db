-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE sp_step_update 
	-- Add the parameters for the stored procedure here
	@step_id UNIQUEIDENTIFIER = NULL, 
	@description VARCHAR(250) = NULL,
	@step_order SMALLINT = NULL,
	@recipe_id UNIQUEIDENTIFIER = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE STEP
	SET [DESCRIPTION] = @description, STEP_ORDER = @step_order, RECIPE_ID = @recipe_id
	WHERE STEP_ID = @step_id
END
