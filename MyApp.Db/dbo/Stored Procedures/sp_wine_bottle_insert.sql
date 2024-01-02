CREATE PROCEDURE [dbo].[sp_wine_bottle_insert]
	@wine_bottle_id UNIQUEIDENTIFIER = NULL,
	@reference VARCHAR(12) = NULL,
	@entry_date DATETIME = NULL,
	@predicted_date DATETIME = NULL,
	@exit_date DATETIME = NULL,
	@review VARCHAR(500) = NULL,
	@status SMALLINT = NULL,
	@wine_cellar_id UNIQUEIDENTIFIER = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO WINE_BOTTLE 
	(
		WINE_BOTTLE_ID, 
		WINE_BOTTLE_REFERENCE, 
		WINE_BOTTLE_ENTRY_DATE, 
		WINE_BOTTLE_PREDICTED_DATE, 
		WINE_BOTTLE_EXIT_DATE, 
		WINE_BOTTLE_REVIEW, 
		WINE_BOTTLE_STATUS,
		WINE_CELLAR_ID
	)
	VALUES 
	(
		@wine_bottle_id, 
		@reference, 
		@entry_date, 
		@predicted_date, 
		@exit_date, 
		@review, 
		@status,
		@wine_cellar_id
	)
END