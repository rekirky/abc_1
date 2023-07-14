CREATE TABLE [dbo].[HcmWorker]
(
[CREATEDBY] [varchar] (20) NULL,
[CREATEDDATETIME] [date] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[MODIFIEDDATETIME] [date] NULL,
[PARTITION] [bigint] NULL,
[Person] [bigint] NULL,
[PersonnelNumber] [varchar] (25) NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HcmWorker] ADD CONSTRAINT [PK_HcmWorker_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_dbo_NC_HcmWorker] ON [dbo].[HcmWorker] ([Person]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[HcmWorker] TO [Eliant]
GO
