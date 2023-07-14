CREATE TABLE [dbo].[HcmTitle]
(
[CREATEDBY] [varchar] (20) NULL,
[CREATEDDATETIME] [date] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[MODIFIEDDATETIME] [date] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[TitleId] [varchar] (65) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HcmTitle] ADD CONSTRAINT [PK_HcmTitle_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
