CREATE TABLE [dbo].[SAB_ConsSalesInactiveReason]
(
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[InactiveReason] [varchar] (50) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsSalesInactiveReason] ADD CONSTRAINT [PK_SAB_ConsSalesInactiveReason_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
