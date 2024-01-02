CREATE PROCEDURE [dbo].[sp_cepage_update]

	@cepage_id UNIQUEIDENTIFIER = NULL,
	@name VARCHAR(50) = NULL,
	@color VARCHAR(50) = NULL,
	@percent SMALLINT = NULL

AS
BEGIN

	SET NOCOUNT ON;

	UPDATE CEPAGE
	SET CEPAGE_ID = @cepage_id,
		CEPAGE_NAME = @name,
		CEPAGE_COLOR = @color,
		CEPAGE_PERCENT = @percent
	WHERE CEPAGE_ID = @cepage_id

END