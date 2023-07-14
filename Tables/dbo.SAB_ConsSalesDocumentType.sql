CREATE TABLE [dbo].[SAB_ConsSalesDocumentType]
(
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[Type] [varchar] (20) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsSalesDocumentType] ADD CONSTRAINT [PK_SAB_ConsSalesDocumentType_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
