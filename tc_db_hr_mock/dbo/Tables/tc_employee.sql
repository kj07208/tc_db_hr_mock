CREATE TABLE [dbo].[tc_employee] (
    [employee_key_id]               INT          IDENTITY (1, 1) NOT NULL,
    [employee_uni]                  VARCHAR (9)  NULL,
    [employee_last_name]            VARCHAR (60) NULL,
    [employee_first_name]           VARCHAR (50) NULL,
    [employee_position_number]      VARCHAR (6)  NULL,
    [employee_position_description] VARCHAR (30) NULL,
    [employee_position_suffix]      VARCHAR (2)  NULL,
    [employee_reports_to_uni]       VARCHAR (9)  NULL,
    CONSTRAINT [PK_tc_employee] PRIMARY KEY CLUSTERED ([employee_key_id] ASC)
);

