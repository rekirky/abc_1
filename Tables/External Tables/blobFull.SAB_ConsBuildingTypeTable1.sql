CREATE EXTERNAL TABLE [blobFull].[SAB_ConsBuildingTypeTable]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[ConsBuildingTypeDescription] [varchar] (120) NULL,
[ConsBuildingTypeId] [varchar] (20) NULL,
[FromDate] [varchar] (40) NULL,
[Inactive] [varchar] (51) NULL,
[PlanDescription] [varchar] (1000) NULL,
[Status] [varchar] (51) NULL,
[ToDate] [varchar] (40) NULL,
[Type] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL
)
WITH
(
LOCATION = N'Tables/General/Group/SAB_ConsBuildingTypeTable/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
