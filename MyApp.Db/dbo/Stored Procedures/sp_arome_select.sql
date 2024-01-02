CREATE PROCEDURE [dbo].[sp_arome_select]
	@arome_id UNIQUEIDENTIFIER = NULL,
	@name VARCHAR(50) = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF(@arome_id IS NOT NULL)
		
		SELECT * FROM AROME a (NOLOCK)
		WHERE a.AROME_ID = @arome_id

	ELSE IF(@name IS NOT NULL)
		
		SELECT * FROM AROME a (NOLOCK)
		WHERE a.AROME_NAME = @name

	ELSE

		SELECT * FROM AROME a (NOLOCK)
END