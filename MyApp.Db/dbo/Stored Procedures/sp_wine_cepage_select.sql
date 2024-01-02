CREATE PROCEDURE [dbo].[sp_wine_cepage_select]
	@wine_cepage_id UNIQUEIDENTIFIER = NULL,
	@wine_id UNIQUEIDENTIFIER = NULL,
	@cepage_id UNIQUEIDENTIFIER = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF(@wine_id IS NOT NULL AND @cepage_id IS NOT NULL)
		
		SELECT * FROM WINE_CEPAGE wc (NOLOCK)
		WHERE wc.WINE_ID = @wine_id
			AND wc.CEPAGE_ID = @cepage_id

	ELSE IF(@wine_cepage_id IS NOT NULL)
		
		SELECT * FROM WINE_CEPAGE wc (NOLOCK)
		WHERE wc.WINE_CEPAGE_ID = @wine_cepage_id

	ELSE IF(@wine_id IS NOT NULL)
		
		SELECT * FROM WINE_CEPAGE wc (NOLOCK)
		WHERE wc.WINE_ID = @wine_id

	ELSE IF(@cepage_id IS NOT NULL)
		
		SELECT * FROM WINE_CEPAGE wc (NOLOCK)
		WHERE wc.CEPAGE_ID = @cepage_id

	ELSE

		SELECT * FROM WINE_CEPAGE wc (NOLOCK)
END