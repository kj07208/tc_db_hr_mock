-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GET_Subordinates_By_Uni] 
	-- Add the parameters for the stored procedure here
	@employee_uni varchar(10)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [employee_key_id]
      ,[employee_uni] AS uni
      ,[employee_last_name] AS last_name
      ,[employee_first_name] AS first_name
      ,[employee_position_number] AS position_number
      ,[employee_position_description] AS position_description
      ,[employee_position_suffix] AS position_suffix
    FROM [tc_HRForms].[dbo].[tc_employee]
	WHERE [employee_reports_to_uni] = UPPER(@employee_uni) 
END
