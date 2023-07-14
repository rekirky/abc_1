CREATE TABLE [stage].[SAB_ConsLotStructureElementLookup]
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
[ElementType] [bigint] NULL,
[ElementTypeParent] [bigint] NULL,
[LevelParent] [bigint] NULL,
[LotStructureElement] [bigint] NULL,
[LotStructureElementParent] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL
) ON [PRIMARY]
GO
