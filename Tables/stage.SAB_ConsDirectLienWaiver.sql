CREATE TABLE [stage].[SAB_ConsDirectLienWaiver]
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
[DocumentTemplate] [bigint] NULL,
[LienWaiverId] [varchar] (30) NULL,
[LotStructureElement] [bigint] NULL,
[Type] [varchar] (51) NULL,
[Vendor] [bigint] NULL,
[Status] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[CREATEDDATETIME] [varchar] (40) NULL
) ON [PRIMARY]
GO
