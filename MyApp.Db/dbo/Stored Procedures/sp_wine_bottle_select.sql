CREATE PROCEDURE [dbo].[sp_wine_bottle_select]
	@wine_bottle_id UNIQUEIDENTIFIER = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF(@wine_bottle_id IS NOT NULL)
		
		SELECT * FROM WINE_BOTTLE wb (NOLOCK)
		WHERE wb.WINE_BOTTLE_ID = @wine_bottle_id

	ELSE

		SELECT * FROM WINE_BOTTLE wb (NOLOCK)
END