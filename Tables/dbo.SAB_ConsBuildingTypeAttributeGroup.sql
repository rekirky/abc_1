CREATE TABLE [dbo].[SAB_ConsBuildingTypeAttributeGroup]
(
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[KEY_] [int] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsBuildingTypeAttributeGroup] ADD CONSTRAINT [PK_SAB_ConsBuildingTypeAttributeGroup_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
