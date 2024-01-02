CREATE PROCEDURE [dbo].[sp_wince_cellar_delete]
	@wine_cellar_id UNIQUEIDENTIFIER = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE FROM WINE_CELLAR
	WHERE WINE_CELLAR_ID = @wine_cellar_id
END