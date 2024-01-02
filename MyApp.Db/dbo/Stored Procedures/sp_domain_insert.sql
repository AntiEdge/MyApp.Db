CREATE PROCEDURE [dbo].[sp_domain_insert]

	@domain_id UNIQUEIDENTIFIER = NULL,
	@name VARCHAR(50) = NULL,
	@description VARCHAR(250) = NULL

AS
BEGIN

	SET NOCOUNT ON;

	INSERT INTO DOMAIN 
	(
		DOMAIN_ID,
		DOMAIN_NAME,
		DOMAIN_DESCRIPTION
	)
	VALUES 
	(
		@domain_id, 
		@name, 
		@description
	)

END