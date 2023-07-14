CREATE TABLE [dbo].[VendPrenote]
(
[BankAccountId] [varchar] (10) NULL,
[CREATEDBY] [varchar] (20) NULL,
[CREATEDDATETIME] [date] NULL,
[DataAreaId] [varchar] (4) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[MODIFIEDDATETIME] [date] NULL,
[PARTITION] [bigint] NULL,
[PrenoteApprovedDate] [date] NULL,
[PRENOTEAPPROVEDDATETZID] [int] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[VendAccount] [varchar] (20) NULL,
[VendAccountId] [varchar] (10) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[VendPrenote] ADD CONSTRAINT [PK_VendPrenote_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
