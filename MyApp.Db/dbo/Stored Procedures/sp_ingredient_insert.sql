-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE sp_ingredient_insert 
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
	--IF(@ingredient_id IS NOT NULL AND @name IS NOT NULL AND @id_quantity IS NOT NULL)
	INSERT INTO INGREDIENT (INGREDIENT_ID, NAME, ID_QUANTITY)
	VALUES (@ingredient_id, @name, @id_quantity)
END
