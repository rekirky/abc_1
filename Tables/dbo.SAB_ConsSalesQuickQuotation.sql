CREATE TABLE [dbo].[SAB_ConsSalesQuickQuotation]
(
[BuildingTypeId] [varchar] (20) NULL,
[ColorScheme] [bigint] NULL,
[CREATEDBY] [varchar] (20) NULL,
[CREATEDDATETIME] [date] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Description] [varchar] (255) NULL,
[FacadeId] [varchar] (20) NULL,
[LotStructureElement] [bigint] NULL,
[Opportunity] [bigint] NULL,
[Orientation] [varchar] (256) NULL,
[OrientationEnumID] [varchar] (51) NULL,
[OwnerWorker] [bigint] NULL,
[PARTITION] [bigint] NULL,
[QuickQuotationId] [varchar] (30) NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsSalesQuickQuotation] ADD CONSTRAINT [PK_SAB_ConsSalesQuickQuotation_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
