-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_ingredient_update] 
	-- Add the parameters for the stored procedure here
	@ingredient_id UNIQUEIDENTIFIER = NULL, 
	@name VARCHAR(50) = NULL,
	@id_quantity UNIQUEIDENTIFIER = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE INGREDIENT
	SET [NAME] = @name, ID_QUANTITY = @id_quantity
	WHERE INGREDIENT_ID = @ingredient_id
END
