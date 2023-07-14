CREATE TABLE [dbo].[SAB_ConsSalesDiscountType]
(
[AllowanceType] [varchar] (256) NULL,
[AllowanceTypeEnumID] [varchar] (51) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Description] [varchar] (120) NULL,
[DiscountType] [varchar] (20) NULL,
[DocumentSection] [bigint] NULL,
[OH_AllowSalesToSee] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[RevenueCategory] [bigint] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsSalesDiscountType] ADD CONSTRAINT [PK_SAB_ConsSalesDiscountType_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[SAB_ConsSalesDiscountType] TO [Eliant]
GO
GRANT SELECT ON  [dbo].[SAB_ConsSalesDiscountType] TO [OH_BasicReadOnly]
GO
