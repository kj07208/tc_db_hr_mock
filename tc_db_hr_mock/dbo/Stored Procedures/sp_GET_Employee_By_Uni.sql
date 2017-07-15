

-- =============================================
-- Author:		Joseph C Messina III
-- Create date: 06/22/2017
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GET_Employee_By_Uni]
	-- Add the parameters for the stored procedure here
	@employee_uni varchar(10)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SELECT A.[employee_key_id]
      ,A.[employee_uni] AS uni
      ,A.[employee_last_name] AS last_name
      ,A.[employee_first_name] AS first_name
      ,A.[employee_position_number] AS position_number
      ,A.[employee_position_description] AS position_description
      ,A.[employee_position_suffix] AS position_suffix
	  ,A.[employee_reports_to_uni] AS supervisor_uni
	  ,(SELECT B.[employee_first_name] + ' ' + B.[employee_last_name] FROM [tc_HRForms].[dbo].[tc_employee] B WHERE B.[employee_uni] = A.[employee_reports_to_uni]) AS supervisor
    FROM [tc_HRForms].[dbo].[tc_employee] A
	WHERE A.[employee_uni] = UPPER(@employee_uni)
	
END
