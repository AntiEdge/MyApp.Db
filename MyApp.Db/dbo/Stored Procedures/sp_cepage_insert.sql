CREATE PROCEDURE [dbo].[sp_cepage_insert]

	@cepage_id UNIQUEIDENTIFIER = NULL,
	@name VARCHAR(50) = NULL,
	@color VARCHAR(50) = NULL,
	@percent SMALLINT = NULL

AS
BEGIN

	SET NOCOUNT ON;

	INSERT INTO CEPAGE 
	(
		CEPAGE_ID,
		CEPAGE_NAME,
		CEPAGE_COLOR,
		CEPAGE_PERCENT
	)
	VALUES 
	(
		@cepage_id, 
		@name, 
		@color,
		@percent
	)

END