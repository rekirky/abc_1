CREATE TABLE [dbo].[SAB_ConsSalesCommissionBrokerAgent]
(
[Broker] [bigint] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[LicenseNumber] [varchar] (20) NULL,
[PARTITION] [bigint] NULL,
[Party] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsSalesCommissionBrokerAgent] ADD CONSTRAINT [PK_SAB_ConsSalesCommissionBrokerAgent_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
