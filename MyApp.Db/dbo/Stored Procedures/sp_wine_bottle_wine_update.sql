CREATE PROCEDURE [dbo].[sp_wine_bottle_wine_update]
	@wine_bottle_wine_id UNIQUEIDENTIFIER = NULL,
	@wine_bottle_id UNIQUEIDENTIFIER = NULL,
	@wine_id UNIQUEIDENTIFIER = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE WINE_BOTTLE_WINE 
	SET 
		WINE_BOTTLE_ID = @wine_bottle_id,
		WINE_ID = @wine_id
	WHERE WINE_BOTTLE_WINE_ID = @wine_bottle_wine_id
END