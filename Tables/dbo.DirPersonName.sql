CREATE TABLE [dbo].[DirPersonName]
(
[CREATEDBY] [varchar] (20) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[FirstName] [varchar] (25) NULL,
[LastName] [varchar] (25) NULL,
[LastNamePrefix] [varchar] (25) NULL,
[MiddleName] [varchar] (25) NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[PARTITION] [bigint] NULL,
[Person] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[ValidFrom] [date] NULL,
[VALIDFROMTZID] [int] NULL,
[ValidTo] [date] NULL,
[VALIDTOTZID] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DirPersonName] ADD CONSTRAINT [PK_DirPersonName_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_dbo_NC_DirPersonName] ON [dbo].[DirPersonName] ([Person], [ValidFrom], [ValidTo]) ON [PRIMARY]
GO
