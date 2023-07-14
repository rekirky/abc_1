CREATE TABLE [dbo].[SAB_ConsWBSDelayTrans]
(
[ActivityNumber] [varchar] (50) NULL,
[CREATEDBY] [varchar] (20) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[DelayReason] [bigint] NULL,
[FinancialInstance] [bigint] NULL,
[NumberOfDays] [int] NULL,
[OH_DelayOwner] [varchar] (51) NULL,
[OH_LockState] [varchar] (256) NULL,
[OH_LockStateEnumID] [varchar] (51) NULL,
[OH_UpdateType] [varchar] (256) NULL,
[OH_UpdateTypeEnumID] [varchar] (51) NULL,
[OH_UpdateTypeSet] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[SchedEndDateNew] [date] NULL,
[SchedEndDateOrig] [date] NULL,
[SchedStartDateNew] [date] NULL,
[SchedStartDateOrig] [date] NULL,
[TransDate] [date] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsWBSDelayTrans] ADD CONSTRAINT [PK_SAB_ConsWBSDelayTrans_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
