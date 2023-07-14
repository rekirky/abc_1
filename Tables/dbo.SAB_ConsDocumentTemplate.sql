CREATE TABLE [dbo].[SAB_ConsDocumentTemplate]
(
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[DocumentType] [varchar] (256) NULL,
[DocumentTypeEnumID] [varchar] (51) NULL,
[DocuRefRecId] [bigint] NULL,
[Name] [varchar] (60) NULL,
[PARTITION] [bigint] NULL,
[Priority] [int] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsDocumentTemplate] ADD CONSTRAINT [PK_SAB_ConsDocumentTemplate_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
