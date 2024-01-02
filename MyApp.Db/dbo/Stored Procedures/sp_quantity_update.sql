-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE sp_quantity_update 
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
	UPDATE QUANTITY
	SET QUANTITY_VALUE = @value, QUANTITY_UNIT = @unit
	WHERE QUANTITY_ID = @quantity_id
END