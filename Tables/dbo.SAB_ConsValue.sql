CREATE TABLE [dbo].[SAB_ConsValue]
(
[RecId] [bigint] NULL,
[Value] [varchar] (500) NULL,
[LSN] [varchar] (60) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL
) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [idx_C_SAB_ConsValue] ON [dbo].[SAB_ConsValue] ([RecId]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[SAB_ConsValue] TO [OH_BasicReadOnly]
GO
GRANT SELECT ON  [dbo].[SAB_ConsValue] TO [OH_ProductionPlanning]
GO
