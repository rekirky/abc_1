CREATE TABLE [stage].[SAB_ConsPurchOkToPayTrans]
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
[Amount] [float] NULL,
[Approved] [varchar] (51) NULL,
[ApprovedBy] [bigint] NULL,
[HasError] [varchar] (51) NULL,
[Posted] [varchar] (51) NULL,
[WorkOrderSummary] [bigint] NULL,
[WrapInsuranceDeduction] [float] NULL,
[WrapInsuranceType] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[CREATEDDATETIME] [varchar] (40) NULL,
[CREATEDBY] [varchar] (20) NULL,
[ClosedDate] [varchar] (40) NULL,
[DocumentDate] [varchar] (40) NULL,
[TransDate] [varchar] (40) NULL
) ON [PRIMARY]
GO
