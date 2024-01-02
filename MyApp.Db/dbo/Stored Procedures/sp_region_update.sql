CREATE PROCEDURE [dbo].[sp_region_update]

	@region_id UNIQUEIDENTIFIER = NULL,
	@name VARCHAR(50) = NULL,
	@city VARCHAR(50) = NULL

AS
BEGIN

	SET NOCOUNT ON;

	UPDATE REGION
	SET REGION_ID = @region_id, 
		REGION_NAME = @name, 
		REGION_CITY = @city
	WHERE REGION_ID = @region_id

END