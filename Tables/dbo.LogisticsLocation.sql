CREATE TABLE [dbo].[LogisticsLocation]
(
[CREATEDDATETIME] [date] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Description] [varchar] (120) NULL,
[DunsNumberRecId] [bigint] NULL,
[IsPostalAddress] [varchar] (51) NULL,
[LocationId] [varchar] (40) NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[MODIFIEDDATETIME] [date] NULL,
[ParentLocation] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LogisticsLocation] ADD CONSTRAINT [PK_LogisticsLocation_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_dbo_NC_LogisticsLocation_RecID] ON [dbo].[LogisticsLocation] ([IsPostalAddress], [RECID]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[LogisticsLocation] TO [Eliant]
GO
GRANT SELECT ON  [dbo].[LogisticsLocation] TO [OH_ProductionPlanning]
GO
