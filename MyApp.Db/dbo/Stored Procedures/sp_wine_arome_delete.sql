CREATE PROCEDURE [dbo].[sp_wine_arome_delete]
	@wine_arome_id UNIQUEIDENTIFIER = NULL,
	@wine_id UNIQUEIDENTIFIER = NULL,
	@arome_id UNIQUEIDENTIFIER = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF(@wine_id IS NOT NULL AND @arome_id IS NOT NULL)

		DELETE FROM WINE_AROME 
		WHERE WINE_ID = @wine_id
			AND AROME_ID = @arome_id;

	ELSE IF(@wine_id IS NOT NULL)

		DELETE FROM WINE_AROME 
		WHERE WINE_ID = @wine_id;

	ELSE IF(@arome_id IS NOT NULL)

		DELETE FROM WINE_AROME 
		WHERE AROME_ID = @arome_id;

	ELSE
		DELETE FROM WINE_AROME 
		WHERE WINE_AROME_ID = @wine_arome_id;
END