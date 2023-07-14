CREATE TABLE [dbo].[SAB_ConsSalesCommissionBroker]
(
[BrokerType] [bigint] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[LicenseNumber] [varchar] (20) NULL,
[PARTITION] [bigint] NULL,
[Party] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsSalesCommissionBroker] ADD CONSTRAINT [PK_SAB_ConsSalesCommissionBroker_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
