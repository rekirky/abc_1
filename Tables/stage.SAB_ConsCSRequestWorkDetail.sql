CREATE TABLE [stage].[SAB_ConsCSRequestWorkDetail]
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
[Appointment] [bigint] NULL,
[LineNumber] [bigint] NULL,
[Request] [bigint] NULL,
[Status] [varchar] (51) NULL,
[Vendor] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[FieldPurchOrder] [bigint] NULL
) ON [PRIMARY]
GO
