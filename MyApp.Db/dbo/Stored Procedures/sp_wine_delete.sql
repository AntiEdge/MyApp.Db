CREATE PROCEDURE [dbo].[sp_wine_delete]
	@wine_id UNIQUEIDENTIFIER = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE FROM WINE
	WHERE WINE_ID = @wine_id;
END