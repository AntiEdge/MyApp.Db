CREATE PROCEDURE [dbo].[sp_wine_cepage_update]

	@wine_cepage_id UNIQUEIDENTIFIER = NULL,
	@wine_id UNIQUEIDENTIFIER = NULL,
	@cepage_id UNIQUEIDENTIFIER = NULL

AS
BEGIN

	SET NOCOUNT ON;

	UPDATE WINE_CEPAGE
	SET WINE_ID = @wine_id,
		CEPAGE_ID = @cepage_id
	WHERE WINE_CEPAGE_ID = @wine_cepage_id

END