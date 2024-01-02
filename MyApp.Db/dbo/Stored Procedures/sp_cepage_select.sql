CREATE PROCEDURE [dbo].[sp_cepage_select]
	@cepage_id UNIQUEIDENTIFIER = NULL,
	@name VARCHAR(50) = NULL,
	@color VARCHAR(50) = NULL,
	@percent SMALLINT = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF(@cepage_id IS NOT NULL)
		
		SELECT * FROM CEPAGE c (NOLOCK)
		WHERE c.CEPAGE_ID = @cepage_id

	ELSE IF(@name IS NOT NULL AND @color IS NOT NULL AND @percent IS NOT NULL)
		
		SELECT * FROM CEPAGE c (NOLOCK)
		WHERE c.CEPAGE_NAME = @name
			AND c.CEPAGE_COLOR = @color
			AND c.CEPAGE_PERCENT = @percent

	ELSE

		SELECT * FROM CEPAGE c (NOLOCK)
END