CREATE TABLE [stage].[SAB_ConsDesignCenterAttributeValue]
(
[instance] [bigint] NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[Start_LSN] [varchar] (50) NULL,
[End_LSN] [varchar] (50) NULL,
[DML_Action] [varchar] (100) NULL,
[Seq_Val] [varchar] (50) NULL,
[Update_Mask] [varchar] (400) NULL,
[RECID] [bigint] NULL,
[Attribute] [bigint] NULL,
[InstanceValue] [bigint] NULL,
[LastChangeDateTime] [varchar] (40) NULL,
[LASTCHANGEDATETIMETZID] [int] NULL,
[LastChangeWorker] [bigint] NULL,
[Location] [bigint] NULL,
[LocationGroup] [bigint] NULL,
[OPTION_] [bigint] NULL,
[TradeType] [bigint] NULL,
[Value] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[IsDeleted] [varchar] (51) NULL
) ON [PRIMARY]
GO
