CREATE PROCEDURE [dbo].[sp_arome_insert]

	@arome_id UNIQUEIDENTIFIER = NULL,
	@name VARCHAR(50) = NULL

AS
BEGIN

	SET NOCOUNT ON;

	INSERT INTO AROME 
	(
		AROME_ID,
		AROME_NAME
	)
	VALUES 
	(
		@arome_id, 
		@name
	)

END