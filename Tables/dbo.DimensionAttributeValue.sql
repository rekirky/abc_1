CREATE TABLE [dbo].[DimensionAttributeValue]
(
[ActiveFrom] [date] NULL,
[ActiveTo] [date] NULL,
[BackingRecordDataAreaId] [varchar] (4) NULL,
[CREATEDBY] [varchar] (20) NULL,
[CREATEDDATETIME] [date] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[DimensionAttribute] [bigint] NULL,
[DisplayValue] [varchar] (30) NULL,
[EntityInstance] [bigint] NULL,
[GroupDimension] [varchar] (10) NULL,
[HashKey] [varchar] (50) NULL,
[IsBalancing_PSN] [varchar] (3) NULL,
[IsBalancing_PSNFlag] [bit] NULL,
[IsBlockedForManualEntry] [varchar] (3) NULL,
[IsBlockedForManualEntryFlag] [bit] NULL,
[IsDeleted] [varchar] (3) NULL,
[IsDeletedFlag] [bit] NULL,
[IsSuspended] [varchar] (3) NULL,
[IsSuspendedFlag] [bit] NULL,
[IsTotal] [varchar] (3) NULL,
[IsTotalFlag] [bit] NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[MODIFIEDDATETIME] [date] NULL,
[OriginalEntityInstance] [bigint] NULL,
[Owner] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DimensionAttributeValue] ADD CONSTRAINT [PK_DimensionAttributeValue_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
