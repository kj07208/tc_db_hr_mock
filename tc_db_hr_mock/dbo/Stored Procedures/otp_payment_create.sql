-- =============================================
-- Author:		Kenneth Cooper
-- Create date: 6/23/2017
-- Description:	Used to create a otp payment record
-- =============================================
CREATE PROCEDURE otp_payment_create
	-- Add the parameters for the stored procedure here
	@otp_trns_key_id int, 
	@otp_trns_payment_index_number varchar(6),
	@otp_trns_payment_account_number varchar(6),
	@otp_trns_payment_percentage int,
	@otp_trns_payment_amount decimal(20,2)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO [dbo].[tc_otp_payment]
           ([otp_trns_key_id]
           ,[otp_trns_payment_index_number]
           ,[otp_trns_payment_account_number]
           ,[otp_trns_payment_percentage]
           ,[otp_trns_payment_amount])
     VALUES
           (@otp_trns_key_id
           ,@otp_trns_payment_index_number
           ,@otp_trns_payment_account_number
           ,@otp_trns_payment_percentage
           ,@otp_trns_payment_amount)

	Declare @newKey int
	--Select * from [dbo].[tc_otp_payment] Where SCOPE_IDENTITY())
	Select * from  [dbo].[tc_otp_payment] Where [otp_trns_payment_key_id] = SCOPE_IDENTITY()

END
