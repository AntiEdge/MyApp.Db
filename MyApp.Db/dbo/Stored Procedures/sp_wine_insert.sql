CREATE PROCEDURE [dbo].[sp_wine_insert]
	@wine_id UNIQUEIDENTIFIER = NULL,
	@name VARCHAR(50) = NULL,
	@description VARCHAR(250) = NULL,
	@millesime INT = NULL,
	@wine_color SMALLINT = NULL,
	@appelation VARCHAR(50) = NULL,
	@ranking VARCHAR(50) = NULL,
	@quantity_id UNIQUEIDENTIFIER = NULL,
	@domain_id UNIQUEIDENTIFIER = NULL,
	@region_id UNIQUEIDENTIFIER = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO WINE
	(
		WINE_ID,
		WINE_NAME,
		WINE_DESCRIPTION,
		WINE_MILLESIME,
		WINE_COLOR,
		WINE_APPELATION,
		WINE_RANKING,
		QUANTITY_ID,
		DOMAIN_ID,
		REGION_ID
	)
	VALUES 
	(
		@wine_id, 
		@name, 
		@description,
		@millesime,
		@wine_color,
		@appelation,
		@ranking,
		@quantity_id,
		@domain_id,
		@region_id
	)
END