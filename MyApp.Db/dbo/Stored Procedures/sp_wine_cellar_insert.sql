CREATE PROCEDURE [dbo].[sp_wine_cellar_insert]
	@wine_cellar_id UNIQUEIDENTIFIER = NULL,
	@name VARCHAR(25) = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO WINE_CELLAR 
	(
		WINE_CELLAR_ID, 
		WINE_CELLAR_NAME
	)
	VALUES 
	(
		@wine_cellar_id,
		@name
	)
END