CREATE TABLE [dbo].[SAB_ConsDesignCenterInstanceValue]
(
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[FINANCIALINSTANCE] [bigint] NULL,
[InstanceRelationType] [bigint] NULL,
[OPTIONTEMPLATE] [bigint] NULL,
[PARTITION] [bigint] NULL,
[PHASERELEASELOT] [bigint] NULL,
[PSEUDOLOT] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[RELATIONTYPE] [bigint] NULL,
[SALESDESIGNVERSION] [bigint] NULL,
[SALESQUICKQUOTATION] [bigint] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsDesignCenterInstanceValue] ADD CONSTRAINT [PK_SAB_ConsDesignCenterInstanceValue_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
