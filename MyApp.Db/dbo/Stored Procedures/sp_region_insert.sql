CREATE PROCEDURE [dbo].[sp_region_insert]

	@region_id UNIQUEIDENTIFIER = NULL,
	@name VARCHAR(50) = NULL,
	@city VARCHAR(50) = NULL

AS
BEGIN

	SET NOCOUNT ON;

	INSERT INTO REGION 
	(
		REGION_ID,
		REGION_NAME,
		REGION_CITY
	)
	VALUES 
	(
		@region_id, 
		@name, 
		@city
	)

END