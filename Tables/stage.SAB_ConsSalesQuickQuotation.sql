CREATE TABLE [stage].[SAB_ConsSalesQuickQuotation]
(
[Instance] [bigint] NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[Start_LSN] [varchar] (50) NULL,
[End_LSN] [varchar] (50) NULL,
[DML_Action] [varchar] (100) NULL,
[Seq_Val] [varchar] (50) NULL,
[Update_Mask] [varchar] (400) NULL,
[RECID] [bigint] NULL,
[BuildingTypeId] [varchar] (20) NULL,
[Description] [varchar] (255) NULL,
[FacadeId] [varchar] (20) NULL,
[LotStructureElement] [bigint] NULL,
[Opportunity] [bigint] NULL,
[OwnerWorker] [bigint] NULL,
[QuickQuotationId] [varchar] (30) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[CREATEDDATETIME] [varchar] (40) NULL,
[CREATEDBY] [varchar] (20) NULL,
[ColorScheme] [bigint] NULL,
[Orientation] [varchar] (51) NULL
) ON [PRIMARY]
GO
