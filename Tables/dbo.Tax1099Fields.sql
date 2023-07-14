CREATE TABLE [dbo].[Tax1099Fields]
(
[DataAreaId] [varchar] (4) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Description] [varchar] (50) NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[Tax1099Amount] [numeric] (18, 2) NULL,
[Tax1099Box] [varchar] (10) NULL,
[Tax1099FieldNum] [int] NULL,
[Tax1099Form] [varchar] (10) NULL,
[Tax1099Type] [varchar] (256) NULL,
[Tax1099TypeEnumID] [varchar] (51) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Tax1099Fields] ADD CONSTRAINT [PK_Tax1099Fields_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
