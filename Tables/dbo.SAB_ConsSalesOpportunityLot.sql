CREATE TABLE [dbo].[SAB_ConsSalesOpportunityLot]
(
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Lot] [bigint] NULL,
[Opportunity] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[Status] [varchar] (256) NULL,
[StatusEnumID] [varchar] (51) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsSalesOpportunityLot] ADD CONSTRAINT [PK_SAB_ConsSalesOpportunityLot_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
