CREATE PROCEDURE [dbo].[sp_wine_cellar_update]
	@wine_cellar_id UNIQUEIDENTIFIER = NULL,
	@name VARCHAR(25) = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE WINE_CELLAR
	SET 
		WINE_CELLAR_NAME = @name
	WHERE WINE_CELLAR_ID = @wine_cellar_id
END