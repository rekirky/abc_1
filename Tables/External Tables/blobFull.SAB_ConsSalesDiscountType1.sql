CREATE EXTERNAL TABLE [blobFull].[SAB_ConsSalesDiscountType]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[AllowanceType] [varchar] (51) NULL,
[Description] [varchar] (120) NULL,
[DiscountType] [varchar] (20) NULL,
[DocumentSection] [bigint] NULL,
[RevenueCategory] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[OH_AllowSalesToSee] [varchar] (51) NULL
)
WITH
(
LOCATION = N'Tables/General/Group/SAB_ConsSalesDiscountType/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
