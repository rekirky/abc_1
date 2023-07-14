CREATE TABLE [stage].[SAB_ConsOrderChange]
(
[Instance] [bigint] NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[Start_LSN] [varchar] (50) NULL,
[End_LSN] [varchar] (50) NULL,
[DML_Action] [varchar] (100) NULL,
[Seq_Val] [varchar] (50) NULL,
[Update_Mask] [varchar] (400) NULL,
[RECID] [bigint] NULL,
[ApprovedDate] [varchar] (40) NULL,
[ChangeReason] [bigint] NULL,
[Opportunity] [bigint] NULL,
[OrderChange] [varchar] (30) NULL,
[SalesDesign] [bigint] NULL,
[Status] [varchar] (51) NULL,
[ToLot] [bigint] NULL,
[Type] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[CREATEDDATETIME] [varchar] (40) NULL,
[SaleOrigin] [bigint] NULL,
[ConfirmedDate] [varchar] (51) NULL
) ON [PRIMARY]
GO
