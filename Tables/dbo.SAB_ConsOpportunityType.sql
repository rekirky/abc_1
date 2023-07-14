CREATE TABLE [dbo].[SAB_ConsOpportunityType]
(
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[OpportunityType] [varchar] (50) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsOpportunityType] ADD CONSTRAINT [PK_SAB_ConsOpportunityType_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
