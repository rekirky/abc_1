CREATE TABLE [dbo].[SAB_ConsSalesQuotationJour]
(
[ConfirmedDate] [varchar] (51) NULL,
[ContractDate] [varchar] (51) NULL,
[CREATEDBY] [varchar] (20) NULL,
[CREATEDDATETIME] [date] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[ExpiryDate] [date] NULL,
[FinancialInstance] [bigint] NULL,
[Locked] [varchar] (3) NULL,
[LockedFlag] [bit] NULL,
[Lot] [bigint] NULL,
[Name] [varchar] (120) NULL,
[OfferType] [varchar] (256) NULL,
[OfferTypeEnumID] [varchar] (51) NULL,
[Opportunity] [bigint] NULL,
[PARTITION] [bigint] NULL,
[PlanChange] [varchar] (3) NULL,
[PlanChangeFlag] [bit] NULL,
[QuotationDocNum] [varchar] (30) NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[SalesDesign] [bigint] NULL,
[SalesDesignVersion] [bigint] NULL,
[Status] [varchar] (256) NULL,
[StatusEnumID] [varchar] (51) NULL,
[Type] [varchar] (256) NULL,
[TypeEnumID] [varchar] (51) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsSalesQuotationJour] ADD CONSTRAINT [PK_SAB_ConsSalesQuotationJour_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
