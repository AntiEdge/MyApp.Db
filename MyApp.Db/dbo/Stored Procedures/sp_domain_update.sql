CREATE PROCEDURE [dbo].[sp_domain_update]

	@domain_id UNIQUEIDENTIFIER = NULL,
	@name VARCHAR(50) = NULL,
	@description VARCHAR(250) = NULL

AS
BEGIN

	SET NOCOUNT ON;

	UPDATE DOMAIN
	SET DOMAIN_ID = @domain_id,
		DOMAIN_NAME = @name,
		DOMAIN_DESCRIPTION = @description
	WHERE DOMAIN_ID = @domain_id

END