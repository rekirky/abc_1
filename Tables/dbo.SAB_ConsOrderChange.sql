CREATE TABLE [dbo].[SAB_ConsOrderChange]
(
[ApprovedDate] [date] NULL,
[ChangeReason] [bigint] NULL,
[ConfirmedDate] [varchar] (51) NULL,
[CREATEDDATETIME] [date] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Opportunity] [bigint] NULL,
[OrderChange] [varchar] (30) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[SaleOrigin] [bigint] NULL,
[SalesDesign] [bigint] NULL,
[Status] [varchar] (256) NULL,
[StatusEnumID] [varchar] (51) NULL,
[ToLot] [bigint] NULL,
[Type] [varchar] (256) NULL,
[TypeEnumID] [varchar] (51) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsOrderChange] ADD CONSTRAINT [PK_SAB_ConsOrderChange_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
