CREATE TABLE [stage].[SAB_ConsSalesCommission]
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
[Agent] [bigint] NULL,
[Amount] [float] NULL,
[Broker] [bigint] NULL,
[Opportunity] [bigint] NULL,
[CalcAmount] [float] NULL,
[AdjustedAmount] [float] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[MODIFIEDDATETIME] [varchar] (40) NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[CREATEDDATETIME] [varchar] (40) NULL,
[CREATEDBY] [varchar] (20) NULL,
[PercentRule] [varchar] (51) NULL,
[Lot] [bigint] NULL
) ON [PRIMARY]
GO
