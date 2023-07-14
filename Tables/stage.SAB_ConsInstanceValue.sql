CREATE TABLE [stage].[SAB_ConsInstanceValue]
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
[InstanceRelationType] [bigint] NULL,
[LEAD] [bigint] NULL,
[OPTION_] [bigint] NULL,
[LOT] [bigint] NULL,
[OPPORTUNITY] [bigint] NULL,
[BUILDINGTYPE] [bigint] NULL,
[LOTSTRUCTUREELEMENT] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[RELATIONTYPE] [bigint] NULL,
[CLOSINGTASK] [bigint] NULL,
[ELEMENTOPENINGTASK] [bigint] NULL
) ON [PRIMARY]
GO
