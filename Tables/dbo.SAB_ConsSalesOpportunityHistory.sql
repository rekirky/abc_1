CREATE TABLE [dbo].[SAB_ConsSalesOpportunityHistory]
(
[AppointmentDuration] [varchar] (51) NULL,
[AppointmentType] [bigint] NULL,
[CREATEDBY] [varchar] (20) NULL,
[CREATEDDATETIME] [date] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[LineNumber] [bigint] NULL,
[LotStructureElement] [bigint] NULL,
[OpportunityParty] [bigint] NULL,
[Origin] [varchar] (256) NULL,
[OriginEnumID] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[Purpose] [bigint] NULL,
[Rating] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[SalesRepresentativeWorker] [bigint] NULL,
[ScheduleStatus] [varchar] (256) NULL,
[ScheduleStatusEnumID] [varchar] (51) NULL,
[Source] [bigint] NULL,
[TransDateTime] [date] NULL,
[TRANSDATETIMETZID] [int] NULL,
[Type] [varchar] (256) NULL,
[TypeEnumID] [varchar] (51) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsSalesOpportunityHistory] ADD CONSTRAINT [PK_SAB_ConsSalesOpportunityHistory_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
