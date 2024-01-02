CREATE PROCEDURE [dbo].[sp_wine_bottle_wine_delete]
	@wine_bottle_wine_id UNIQUEIDENTIFIER = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE FROM WINE_BOTTLE_WINE
	WHERE WINE_BOTTLE_WINE_ID = @wine_bottle_wine_id
END