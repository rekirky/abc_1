CREATE TABLE [dbo].[SAB_ConsChangeReason]
(
[ChangeReason] [varchar] (50) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[OH_ConsResponsibilityRecId] [bigint] NULL,
[OH_requireBudgetOwner] [varchar] (3) NULL,
[OH_requireBudgetOwnerFlag] [bit] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsChangeReason] ADD CONSTRAINT [PK_SAB_ConsChangeReason_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
