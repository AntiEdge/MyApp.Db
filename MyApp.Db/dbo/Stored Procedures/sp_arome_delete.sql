﻿CREATE PROCEDURE [dbo].[sp_arome_delete]

	@arome_id UNIQUEIDENTIFIER = NULL

AS
BEGIN

	SET NOCOUNT ON;

	DELETE FROM AROME
	WHERE AROME_ID = @arome_id

END