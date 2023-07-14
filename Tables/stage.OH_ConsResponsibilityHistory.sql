CREATE TABLE [stage].[OH_ConsResponsibilityHistory]
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
[Responsibility] [bigint] NULL,
[Worker] [bigint] NULL,
[IsPrimary] [varchar] (51) NULL,
[FinancialInstance] [bigint] NULL,
[RefRecId] [bigint] NULL,
[RemovedDate] [varchar] (40) NULL,
[REMOVEDDATETZID] [int] NULL,
[AddedDate] [varchar] (40) NULL,
[ADDEDDATETZID] [int] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[CREATEDBY] [varchar] (20) NULL,
[SYSROWVERSIONNUMBER] [varchar] (50) NULL
) ON [PRIMARY]
GO
