CREATE EXTERNAL TABLE [blobFull].[SAB_ConsSalesQuotationJour]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[ExpiryDate] [varchar] (40) NULL,
[Locked] [varchar] (51) NULL,
[Lot] [bigint] NULL,
[Name] [varchar] (120) NULL,
[QuotationDocNum] [varchar] (30) NULL,
[SalesDesign] [bigint] NULL,
[SalesDesignVersion] [bigint] NULL,
[OfferType] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[CREATEDDATETIME] [varchar] (40) NULL,
[CREATEDBY] [varchar] (20) NULL,
[ConfirmedDate] [varchar] (51) NULL,
[ContractDate] [varchar] (51) NULL,
[Status] [varchar] (51) NULL,
[FinancialInstance] [bigint] NULL,
[Opportunity] [bigint] NULL,
[PlanChange] [varchar] (51) NULL,
[Type] [varchar] (51) NULL
)
WITH
(
LOCATION = N'Tables/SAB_ConsSales/Transaction/SAB_ConsSalesQuotationJour/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
