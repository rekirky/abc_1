CREATE TABLE [dbo].[SAB_ConsSalesCommission]
(
[AdjustedAmount] [numeric] (18, 2) NULL,
[Agent] [bigint] NULL,
[Amount] [numeric] (18, 2) NULL,
[Broker] [bigint] NULL,
[CalcAmount] [numeric] (18, 2) NULL,
[CREATEDBY] [varchar] (20) NULL,
[CREATEDDATETIME] [date] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Lot] [bigint] NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[MODIFIEDDATETIME] [date] NULL,
[Opportunity] [bigint] NULL,
[PARTITION] [bigint] NULL,
[PercentRule] [varchar] (51) NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsSalesCommission] ADD CONSTRAINT [PK_SAB_ConsSalesCommission_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
