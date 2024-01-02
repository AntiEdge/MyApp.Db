CREATE PROCEDURE [dbo].[sp_wine_arome_update]

	@wine_arome_id UNIQUEIDENTIFIER = NULL,
	@wine_id UNIQUEIDENTIFIER = NULL,
	@arome_id UNIQUEIDENTIFIER = NULL

AS
BEGIN

	SET NOCOUNT ON;

	UPDATE WINE_AROME
	SET WINE_ID = @wine_id,
		AROME_ID = @arome_id
	WHERE WINE_AROME_ID = @wine_arome_id

END