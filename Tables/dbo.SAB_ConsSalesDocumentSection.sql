CREATE TABLE [dbo].[SAB_ConsSalesDocumentSection]
(
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[Section] [varchar] (50) NULL,
[Sorting] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsSalesDocumentSection] ADD CONSTRAINT [PK_SAB_ConsSalesDocumentSection_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
