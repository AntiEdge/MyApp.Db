CREATE PROCEDURE [dbo].[sp_wine_cellar_select]
	@wine_cellar_id UNIQUEIDENTIFIER = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF(@wine_cellar_id IS NOT NULL)
		
		SELECT * FROM WINE_CELLAR wc (NOLOCK)
		WHERE wc.WINE_CELLAR_ID = @wine_cellar_id

	ELSE

		SELECT * FROM WINE_CELLAR wc (NOLOCK)
END