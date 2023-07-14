CREATE EXTERNAL TABLE [blobFull].[SAB_ConsSalesOpportunity]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[Inactive] [varchar] (51) NULL,
[InactiveReason] [bigint] NULL,
[OpportunityId] [varchar] (30) NULL,
[OwnerWorker] [bigint] NULL,
[Party] [bigint] NULL,
[Probability] [varchar] (51) NULL,
[SalesContingentReason] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[CREATEDDATETIME] [varchar] (40) NULL,
[Source] [bigint] NULL,
[ContactByEmail] [varchar] (51) NULL,
[ContactByMail] [varchar] (51) NULL,
[ContactByPhone] [varchar] (51) NULL,
[PropertyUseRecId] [bigint] NULL,
[Type] [bigint] NULL,
[PrimaryContact] [bigint] NULL
)
WITH
(
LOCATION = N'Tables/SAB_ConsSales/Main/SAB_ConsSalesOpportunity/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
