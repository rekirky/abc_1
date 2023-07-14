CREATE TABLE [dbo].[SAB_ConsBuildingTypeFacadeStatus]
(
[BiddingInactive] [varchar] (3) NULL,
[BiddingInactiveFlag] [bit] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[MarginAnalysisInactive] [varchar] (3) NULL,
[MarginAnalysisInactiveFlag] [bit] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[SalesInactive] [varchar] (3) NULL,
[SalesInactiveFlag] [bit] NULL,
[SetupInactive] [varchar] (3) NULL,
[SetupInactiveFlag] [bit] NULL,
[Status] [varchar] (50) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsBuildingTypeFacadeStatus] ADD CONSTRAINT [PK_SAB_ConsBuildingTypeFacadeStatus_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
