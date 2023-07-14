CREATE TABLE [dbo].[SAB_ConsMeasuredOptionLocation]
(
[BuildingTypeId] [varchar] (20) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Location] [bigint] NULL,
[LocationGroup] [bigint] NULL,
[LotStructureElement] [bigint] NULL,
[OPTION_] [bigint] NULL,
[PARTITION] [bigint] NULL,
[Purpose] [varchar] (256) NULL,
[PurposeEnumID] [varchar] (51) NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[RemoveLocation] [varchar] (3) NULL,
[RemoveLocationFlag] [bit] NULL,
[UseLotSubfloor] [varchar] (3) NULL,
[UseLotSubfloorFlag] [bit] NULL,
[ValidFrom] [date] NULL,
[ValidTo] [date] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsMeasuredOptionLocation] ADD CONSTRAINT [PK_SAB_ConsMeasuredOptionLocation_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
