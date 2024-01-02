-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE sp_recipe_update 
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
	UPDATE RECIPE
	SET [NAME] = @name, NB_PERSON = @nb_person
	WHERE RECIPE_ID = @recipe_id
END
