CREATE PROCEDURE [dbo].[sp_wine_cepage_delete]
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

		DELETE FROM WINE_CEPAGE 
		WHERE WINE_ID = @wine_id
			AND CEPAGE_ID = @cepage_id;

	ELSE IF(@wine_id IS NOT NULL)

		DELETE FROM WINE_CEPAGE 
		WHERE WINE_ID = @wine_id;

	ELSE IF(@cepage_id IS NOT NULL)

		DELETE FROM WINE_CEPAGE 
		WHERE CEPAGE_ID = @cepage_id;

	ELSE
		DELETE FROM WINE_CEPAGE 
		WHERE WINE_CEPAGE_ID = @wine_cepage_id;
END