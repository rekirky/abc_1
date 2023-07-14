CREATE TABLE [dbo].[SAB_ConsSaleOrigin]
(
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[FINANCIALINSTANCE] [bigint] NULL,
[InstanceRelationType] [varchar] (51) NULL,
[LotStructureElement] [bigint] NULL,
[Name] [varchar] (254) NULL,
[PARTITION] [bigint] NULL,
[QUOTATIONJOUR] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[RELATIONTYPE] [bigint] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsSaleOrigin] ADD CONSTRAINT [PK_SAB_ConsSaleOrigin_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
