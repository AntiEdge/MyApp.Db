CREATE PROCEDURE [dbo].[sp_wine_arome_select_aromes_of_wine]
	@wine_id UNIQUEIDENTIFIER = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	IF(@wine_id IS NOT NULL)

		SELECT a.* FROM AROME a (NOLOCK)
		INNER JOIN WINE_AROME wa (NOLOCK) ON a.AROME_ID = wa.AROME_ID
		WHERE wa.WINE_ID = @wine_id

END