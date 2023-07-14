CREATE EXTERNAL TABLE [blobFull].[SAB_ConsSalesOpportunityHistory]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[AppointmentDuration] [varchar] (51) NULL,
[AppointmentType] [bigint] NULL,
[LineNumber] [bigint] NULL,
[LotStructureElement] [bigint] NULL,
[OpportunityParty] [bigint] NULL,
[SalesRepresentativeWorker] [bigint] NULL,
[ScheduleStatus] [varchar] (51) NULL,
[TransDateTime] [varchar] (40) NULL,
[TRANSDATETIMETZID] [int] NULL,
[Type] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[CREATEDDATETIME] [varchar] (40) NULL,
[CREATEDBY] [varchar] (20) NULL,
[Purpose] [bigint] NULL,
[Source] [bigint] NULL,
[Rating] [bigint] NULL,
[Origin] [varchar] (51) NULL
)
WITH
(
LOCATION = N'Tables/General/Transaction/SAB_ConsSalesOpportunityHistory/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
