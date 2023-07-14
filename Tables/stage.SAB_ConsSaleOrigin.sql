CREATE TABLE [stage].[SAB_ConsSaleOrigin]
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
[InstanceRelationType] [varchar] (51) NULL,
[LotStructureElement] [bigint] NULL,
[Name] [varchar] (254) NULL,
[QUOTATIONJOUR] [bigint] NULL,
[FINANCIALINSTANCE] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[RELATIONTYPE] [bigint] NULL
) ON [PRIMARY]
GO
