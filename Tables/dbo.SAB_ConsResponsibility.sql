CREATE TABLE [dbo].[SAB_ConsResponsibility]
(
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Name] [varchar] (50) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[Restricted] [varchar] (3) NULL,
[RestrictedFlag] [bit] NULL,
[ShowVendor] [varchar] (256) NULL,
[ShowVendorEnumID] [varchar] (51) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsResponsibility] ADD CONSTRAINT [PK_SAB_ConsResponsibility_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
