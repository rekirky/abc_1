CREATE TABLE [dbo].[SAB_ConsDocuTable]
(
[BuildingTypeId] [varchar] (20) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Description] [varchar] (120) NULL,
[DocumentDate] [date] NULL,
[DocuType] [bigint] NULL,
[FacadeId] [varchar] (20) NULL,
[FinancialInstance] [bigint] NULL,
[OH_BlockedDelete] [varchar] (51) NULL,
[Orientation] [varchar] (256) NULL,
[OrientationEnumID] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[ValidFrom] [date] NULL,
[ValidTo] [date] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsDocuTable] ADD CONSTRAINT [PK_SAB_ConsDocuTable_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
