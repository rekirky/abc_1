CREATE TABLE [dbo].[SAB_ConsWorkOrderOptionDetails]
(
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[FinancialInstance] [bigint] NULL,
[Location] [bigint] NULL,
[LocationGroup] [bigint] NULL,
[OPTION_] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[SalesQty] [varchar] (51) NULL,
[WorkOrder] [bigint] NULL,
[WorkOrderVersion] [bigint] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsWorkOrderOptionDetails] ADD CONSTRAINT [PK_SAB_ConsWorkOrderOptionDetails_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
