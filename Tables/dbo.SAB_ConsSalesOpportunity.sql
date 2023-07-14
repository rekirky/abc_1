CREATE TABLE [dbo].[SAB_ConsSalesOpportunity]
(
[ContactByEmail] [varchar] (3) NULL,
[ContactByEmailFlag] [bit] NULL,
[ContactByMail] [varchar] (3) NULL,
[ContactByMailFlag] [bit] NULL,
[ContactByPhone] [varchar] (3) NULL,
[ContactByPhoneFlag] [bit] NULL,
[CREATEDDATETIME] [date] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Inactive] [varchar] (3) NULL,
[InactiveFlag] [bit] NULL,
[InactiveReason] [bigint] NULL,
[OpportunityId] [varchar] (30) NULL,
[OwnerWorker] [bigint] NULL,
[PARTITION] [bigint] NULL,
[Party] [bigint] NULL,
[PrimaryContact] [bigint] NULL,
[Probability] [numeric] (18, 6) NULL,
[PropertyUseRecId] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[SalesContingentReason] [bigint] NULL,
[Source] [bigint] NULL,
[Type] [bigint] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsSalesOpportunity] ADD CONSTRAINT [PK_SAB_ConsSalesOpportunity_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
