-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_ingredient_select]
	@ingredient_id UNIQUEIDENTIFIER = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF(@ingredient_id IS NOT NULL)
		
		SELECT * FROM INGREDIENT i (NOLOCK)
		INNER JOIN QUANTITY q (NOLOCK) ON i.ID_QUANTITY = q.QUANTITY_ID
		WHERE i.INGREDIENT_ID = @ingredient_id

	ELSE

		SELECT * FROM INGREDIENT i (NOLOCK)
		INNER JOIN QUANTITY q (NOLOCK) ON i.ID_QUANTITY = q.QUANTITY_ID
END
