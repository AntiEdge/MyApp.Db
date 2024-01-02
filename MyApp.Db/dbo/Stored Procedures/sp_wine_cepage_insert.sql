CREATE PROCEDURE [dbo].[sp_wine_cepage_insert]

	@wine_cepage_id UNIQUEIDENTIFIER = NULL,
	@wine_id UNIQUEIDENTIFIER = NULL,
	@cepage_id UNIQUEIDENTIFIER = NULL

AS
BEGIN

	SET NOCOUNT ON;

	INSERT INTO WINE_CEPAGE 
	(
		WINE_CEPAGE_ID,
		WINE_ID,
		CEPAGE_ID
	)
	VALUES 
	(
		@wine_cepage_id, 
		@wine_id, 
		@cepage_id
	)

END