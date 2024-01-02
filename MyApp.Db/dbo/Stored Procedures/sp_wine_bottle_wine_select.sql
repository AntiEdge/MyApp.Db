CREATE PROCEDURE [dbo].[sp_wine_bottle_wine_select]
	@wine_bottle_wine_id UNIQUEIDENTIFIER = NULL,
	@wine_bottle_id UNIQUEIDENTIFIER = NULL,
	@wine_id UNIQUEIDENTIFIER = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF(@wine_bottle_id IS NOT NULL AND @wine_id IS NOT NULL)
		
		SELECT * FROM WINE_BOTTLE_WINE wbw (NOLOCK)
		WHERE wbw.WINE_BOTTLE_ID = @wine_bottle_id
			AND WINE_ID = @wine_id

	ELSE IF(@wine_bottle_wine_id IS NOT NULL)
		
		SELECT * FROM WINE_BOTTLE_WINE wbw (NOLOCK)
		WHERE wbw.WINE_BOTTLE_WINE_ID = @wine_bottle_wine_id

	ELSE

		SELECT * FROM WINE_BOTTLE_WINE wbw (NOLOCK)
END