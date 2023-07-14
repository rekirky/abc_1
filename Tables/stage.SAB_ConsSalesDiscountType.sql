CREATE TABLE [stage].[SAB_ConsSalesDiscountType]
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
[AllowanceType] [varchar] (51) NULL,
[Description] [varchar] (120) NULL,
[DiscountType] [varchar] (20) NULL,
[DocumentSection] [bigint] NULL,
[RevenueCategory] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[OH_AllowSalesToSee] [varchar] (51) NULL
) ON [PRIMARY]
GO
