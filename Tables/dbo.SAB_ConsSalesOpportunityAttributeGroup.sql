CREATE TABLE [dbo].[SAB_ConsSalesOpportunityAttributeGroup]
(
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[KEY_] [int] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsSalesOpportunityAttributeGroup] ADD CONSTRAINT [PK_SAB_ConsSalesOpportunityAttributeGroup_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
