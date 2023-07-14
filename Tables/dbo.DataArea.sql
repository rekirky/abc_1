CREATE TABLE [dbo].[DataArea]
(
[ALWAYSNATIVE] [bigint] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[ID] [varchar] (251) NULL,
[ISVIRTUAL] [varchar] (3) NULL,
[ISVIRTUALFlag] [bit] NULL,
[NAME] [varchar] (251) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [bigint] NULL,
[TIMEZONE] [bigint] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DataArea] ADD CONSTRAINT [PK_DataArea_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[DataArea] TO [Eliant]
GO
GRANT SELECT ON  [dbo].[DataArea] TO [OH_BasicReadOnly]
GO
