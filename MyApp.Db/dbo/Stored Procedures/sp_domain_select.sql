CREATE PROCEDURE [dbo].[sp_domain_select]
	@domain_id UNIQUEIDENTIFIER = NULL,
	@name VARCHAR(50) = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF(@domain_id IS NOT NULL)
		
		SELECT * FROM DOMAIN d (NOLOCK)
		WHERE d.DOMAIN_ID = @domain_id

	ELSE IF(@name IS NOT NULL)
		
		SELECT * FROM DOMAIN d (NOLOCK)
		WHERE d.DOMAIN_NAME = @name

	ELSE

		SELECT * FROM DOMAIN d (NOLOCK)
END