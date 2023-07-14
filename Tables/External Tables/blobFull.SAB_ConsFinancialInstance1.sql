CREATE EXTERNAL TABLE [blobFull].[SAB_ConsFinancialInstance]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[Active] [varchar] (51) NULL,
[AllocationExclude] [varchar] (51) NULL,
[BillingTemplate] [bigint] NULL,
[DataArea] [varchar] (4) NULL,
[FinancialInstanceId] [varchar] (30) NULL,
[InstanceRelationType] [bigint] NULL,
[Name] [varchar] (254) NULL,
[PostingGroup] [bigint] NULL,
[TaxGroup] [varchar] (10) NULL,
[LOT] [bigint] NULL,
[DEFAULTDIMENSION] [bigint] NULL,
[DEFAULTDIMENSIONSELLING] [bigint] NULL,
[LOTSTRUCTUREELEMENT] [bigint] NULL,
[TAXENTITY] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[RELATIONTYPE] [bigint] NULL,
[BudgetDatesLocked] [varchar] (51) NULL,
[Description] [varchar] (120) NULL,
[ReleaseGroup] [bigint] NULL,
[ACCRUED] [int] NULL,
[CLOSED] [int] NULL,
[FINALIZATIONSTATUS] [int] NULL,
[FINALIZED] [int] NULL
)
WITH
(
LOCATION = N'Tables/SAB_Cons/Main/SAB_ConsFinancialInstance/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
