-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE sp_step_insert 
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
	--IF(@ingredient_id IS NOT NULL AND @name IS NOT NULL AND @id_quantity IS NOT NULL)
	INSERT INTO STEP (STEP_ID, DESCRIPTION, STEP_ORDER, RECIPE_ID)
	VALUES (@step_id, @description, @step_order, @recipe_id)
END
