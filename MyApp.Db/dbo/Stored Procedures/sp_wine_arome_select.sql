CREATE PROCEDURE [dbo].[sp_wine_arome_select]
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
		
		SELECT * FROM WINE_AROME wa (NOLOCK)
		WHERE wa.WINE_ID = @wine_id
			AND wa.AROME_ID = @arome_id

	ELSE IF(@wine_arome_id IS NOT NULL)
		
		SELECT * FROM WINE_AROME wa (NOLOCK)
		WHERE wa.WINE_AROME_ID = @wine_arome_id

	ELSE IF(@wine_id IS NOT NULL)

		SELECT * FROM WINE_AROME wa (NOLOCK)
		WHERE wa.WINE_ID = @wine_id

	ELSE IF(@arome_id IS NOT NULL)

		SELECT * FROM WINE_AROME wa (NOLOCK)
		WHERE wa.AROME_ID = @arome_id

	ELSE

		SELECT * FROM WINE_AROME wa (NOLOCK)
END