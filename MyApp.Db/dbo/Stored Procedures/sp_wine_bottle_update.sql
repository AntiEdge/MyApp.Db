CREATE PROCEDURE [dbo].[sp_wine_bottle_update]
	@wine_bottle_id UNIQUEIDENTIFIER = NULL,
	@reference VARCHAR(12) = NULL,
	@entry_date DATETIME = NULL,
	@predicted_date DATETIME = NULL,
	@exit_date DATETIME = NULL,
	@review VARCHAR(500) = NULL,
	@status SMALLINT = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE WINE_BOTTLE
	SET 
		WINE_BOTTLE_REFERENCE = @reference,
		WINE_BOTTLE_ENTRY_DATE = @entry_date, 
		WINE_BOTTLE_PREDICTED_DATE = @predicted_date, 
		WINE_BOTTLE_EXIT_DATE = @exit_date, 
		WINE_BOTTLE_REVIEW = @review, 
		WINE_BOTTLE_STATUS = @status
	WHERE WINE_BOTTLE_ID = @wine_bottle_id
END