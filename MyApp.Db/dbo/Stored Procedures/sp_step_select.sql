-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE sp_step_select 
	@step_id UNIQUEIDENTIFIER = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF(@step_id IS NOT NULL)
		
		SELECT * FROM STEP s (NOLOCK)
		WHERE s.STEP_ID = @step_id

	ELSE

		SELECT * FROM STEP s (NOLOCK)
END
