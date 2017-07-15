-- =============================================
-- Author:		Joseph C Messina III
-- Create date: 06/29/2017
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GET_Employees_From_Banner]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SELECT employee_uni AS uni, employee_last_name AS last_name, employee_first_name AS first_name, employee_position_number AS position_number, employee_position_description AS position_description, employee_position_suffix AS position_suffix , employee_reports_to_uni AS reports_to_uni
	FROM tc_employee
	
	
END
