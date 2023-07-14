CREATE TABLE [dbo].[HcmEmployment]
(
[CREATEDBY] [varchar] (20) NULL,
[CREATEDDATETIME] [date] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[DefaultDimension] [varchar] (51) NULL,
[EEOEstablishment] [bigint] NULL,
[EmploymentId] [varchar] (40) NULL,
[EmploymentType] [varchar] (256) NULL,
[EmploymentTypeEnumID] [varchar] (51) NULL,
[LegalEntity] [bigint] NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[MODIFIEDDATETIME] [date] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[ValidFrom] [date] NULL,
[VALIDFROMTZID] [int] NULL,
[ValidTo] [date] NULL,
[VALIDTOTZID] [int] NULL,
[Worker] [bigint] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HcmEmployment] ADD CONSTRAINT [PK_HcmEmployment_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
