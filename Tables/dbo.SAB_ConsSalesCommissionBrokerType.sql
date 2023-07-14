CREATE TABLE [dbo].[SAB_ConsSalesCommissionBrokerType]
(
[CostCategory] [bigint] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[DocuSign] [varchar] (3) NULL,
[DocuSignFlag] [bit] NULL,
[Name] [varchar] (50) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsSalesCommissionBrokerType] ADD CONSTRAINT [PK_SAB_ConsSalesCommissionBrokerType_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
