CREATE TABLE [dbo].[SAB_ConsColorSchemeAvailability]
(
[ColorScheme] [bigint] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[LotStructureElement] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[ValidFrom] [date] NULL,
[ValidTo] [date] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsColorSchemeAvailability] ADD CONSTRAINT [PK_SAB_ConsColorSchemeAvailability_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
