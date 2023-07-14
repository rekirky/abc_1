CREATE TABLE [stage].[SAB_ConsWBSDelayTrans]
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
[ActivityNumber] [varchar] (50) NULL,
[DelayReason] [bigint] NULL,
[FinancialInstance] [bigint] NULL,
[NumberOfDays] [int] NULL,
[SchedStartDateNew] [varchar] (40) NULL,
[SchedStartDateOrig] [varchar] (40) NULL,
[SchedEndDateNew] [varchar] (40) NULL,
[SchedEndDateOrig] [varchar] (40) NULL,
[TransDate] [varchar] (40) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[CREATEDBY] [varchar] (20) NULL,
[OH_DelayOwner] [varchar] (51) NULL,
[OH_LockState] [varchar] (51) NULL,
[OH_UpdateType] [varchar] (51) NULL,
[OH_UpdateTypeSet] [varchar] (51) NULL
) ON [PRIMARY]
GO
