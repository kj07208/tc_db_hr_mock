CREATE TABLE [dbo].[tc_otp_payment] (
    [otp_trns_payment_key_id]         INT             NOT NULL,
    [otp_trns_payment_index_number]   VARCHAR (6)     NULL,
    [otp_trns_payment_account_number] VARCHAR (6)     NULL,
    [otp_trns_payment_percentage]     INT             NULL,
    [otp_trns_payment_amount]         DECIMAL (20, 2) NULL,
    [otp_trns_key_id]                 INT             NULL,
    CONSTRAINT [PK_tc_otp_payment] PRIMARY KEY CLUSTERED ([otp_trns_payment_key_id] ASC)
);

