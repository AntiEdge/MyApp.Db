-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE sp_quantity_insert 
	-- Add the parameters for the stored procedure here
	@quantity_id UNIQUEIDENTIFIER = NULL, 
	@value DECIMAL(6,2) = NULL,
	@unit SMALLINT = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	--IF(@ingredient_id IS NOT NULL AND @name IS NOT NULL AND @id_quantity IS NOT NULL)
	INSERT INTO QUANTITY (QUANTITY_ID, QUANTITY_VALUE, QUANTITY_UNIT)
	VALUES (@quantity_id, @value, @unit)
END