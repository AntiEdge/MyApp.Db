CREATE PROCEDURE [dbo].[sp_wine_bottle_wine_insert]
	@wine_bottle_wine_id UNIQUEIDENTIFIER = NULL,
	@wine_bottle_id UNIQUEIDENTIFIER = NULL,
	@wine_id UNIQUEIDENTIFIER = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO WINE_BOTTLE_WINE 
	(
		WINE_BOTTLE_WINE_ID, 
		WINE_BOTTLE_ID, 
		WINE_ID
	)
	VALUES 
	(
		@wine_bottle_wine_id, 
		@wine_bottle_id, 
		@wine_id
	)
END