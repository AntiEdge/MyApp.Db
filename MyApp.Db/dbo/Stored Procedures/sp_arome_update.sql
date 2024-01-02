CREATE PROCEDURE [dbo].[sp_arome_update]

	@arome_id UNIQUEIDENTIFIER = NULL,
	@name VARCHAR(50) = NULL

AS
BEGIN

	SET NOCOUNT ON;

	UPDATE AROME
	SET AROME_ID = @arome_id,
		AROME_NAME = @name
	WHERE AROME_ID = @arome_id

END