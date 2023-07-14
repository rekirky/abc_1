CREATE TABLE [stage].[SAB_ConsWBSDelayReason]
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
[Impact] [varchar] (51) NULL,
[Name] [varchar] (50) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[Type] [varchar] (51) NULL,
[OH_ConsResponsibilityRecId] [bigint] NULL,
[OH_requireOwner] [varchar] (51) NULL
) ON [PRIMARY]
GO
