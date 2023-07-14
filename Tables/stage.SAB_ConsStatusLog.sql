CREATE TABLE [stage].[SAB_ConsStatusLog]
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
[FinancialInstance] [bigint] NULL,
[LineNumber] [bigint] NULL,
[TransDate] [varchar] (40) NULL,
[Type] [varchar] (51) NULL,
[Value] [varchar] (20) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[CREATEDBY] [varchar] (20) NULL,
[Opportunity] [bigint] NULL,
[CREATEDDATETIME] [varchar] (40) NULL
) ON [PRIMARY]
GO
