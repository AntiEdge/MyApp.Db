﻿CREATE PROCEDURE [dbo].[sp_cepage_delete]

	@cepage_id UNIQUEIDENTIFIER = NULL

AS
BEGIN

	SET NOCOUNT ON;

	DELETE FROM CEPAGE
	WHERE CEPAGE_ID = @cepage_id

END