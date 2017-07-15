-- =============================================
-- Author:		Kenneth Cooper
-- Create date: 6/23/2017
-- Description:	Used to delete otp payment records
-- =============================================
CREATE PROCEDURE otp_payment_delete_all
	-- Add the parameters for the stored procedure here
	@otp_trns_payment_key_id int
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Delete from [dbo].[tc_otp_payment]
	Where otp_trns_payment_key_id = @otp_trns_payment_key_id

END
