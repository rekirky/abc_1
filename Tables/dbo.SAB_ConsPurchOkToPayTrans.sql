CREATE TABLE [dbo].[SAB_ConsPurchOkToPayTrans]
(
[Amount] [numeric] (18, 2) NULL,
[Approved] [varchar] (3) NULL,
[ApprovedFlag] [bit] NULL,
[ApprovedBy] [bigint] NULL,
[ClosedDate] [date] NULL,
[CREATEDBY] [varchar] (20) NULL,
[CREATEDDATETIME] [date] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[DocumentDate] [date] NULL,
[HasError] [varchar] (3) NULL,
[HasErrorFlag] [bit] NULL,
[PARTITION] [bigint] NULL,
[Posted] [varchar] (3) NULL,
[PostedFlag] [bit] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[TransDate] [date] NULL,
[WorkOrderSummary] [bigint] NULL,
[WrapInsuranceDeduction] [numeric] (18, 2) NULL,
[WrapInsuranceType] [bigint] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsPurchOkToPayTrans] ADD CONSTRAINT [PK_SAB_ConsPurchOkToPayTrans_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
