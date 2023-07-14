CREATE TABLE [dbo].[SAB_ConsSalesDesignVersion]
(
[CREATEDDATETIME] [date] NULL,
[CURRENT_] [int] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[SalesDesign] [bigint] NULL,
[Version] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsSalesDesignVersion] ADD CONSTRAINT [PK_SAB_ConsSalesDesignVersion_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
