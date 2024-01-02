CREATE PROCEDURE [dbo].[sp_quantity_select]
	@quantity_id UNIQUEIDENTIFIER = NULL,
	@value DECIMAL(6,2) = NULL,
	@unit SMALLINT = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF(@quantity_id IS NOT NULL)
		
		SELECT * FROM QUANTITY q (NOLOCK)
		WHERE q.QUANTITY_ID = @quantity_id

	ELSE IF(@value IS NOT NULL AND @unit IS NOT NULL)
		
		SELECT * FROM QUANTITY q (NOLOCK)
		WHERE q.QUANTITY_VALUE = @value
			AND q.QUANTITY_UNIT = @unit

	ELSE

		SELECT * FROM QUANTITY q (NOLOCK)
END