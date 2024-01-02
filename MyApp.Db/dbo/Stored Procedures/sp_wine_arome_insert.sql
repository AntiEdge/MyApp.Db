CREATE PROCEDURE [dbo].[sp_wine_arome_insert]

	@wine_arome_id UNIQUEIDENTIFIER = NULL,
	@wine_id UNIQUEIDENTIFIER = NULL,
	@arome_id UNIQUEIDENTIFIER = NULL

AS
BEGIN

	SET NOCOUNT ON;

	INSERT INTO WINE_AROME 
	(
		WINE_AROME_ID,
		WINE_ID,
		AROME_ID
	)
	VALUES 
	(
		@wine_arome_id, 
		@wine_id, 
		@arome_id
	)

END