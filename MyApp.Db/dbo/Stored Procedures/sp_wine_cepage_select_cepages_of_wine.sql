CREATE PROCEDURE [dbo].[sp_wine_cepage_select_cepages_of_wine]
	@wine_id UNIQUEIDENTIFIER = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF(@wine_id IS NOT NULL)
		
		SELECT c.* FROM CEPAGE c (NOLOCK)
		INNER JOIN WINE_CEPAGE wc (NOLOCK) ON c.CEPAGE_ID = wc.CEPAGE_ID
		WHERE wc.WINE_ID = @wine_id

END