CREATE TABLE [dbo].[SAB_ConsFinancialInstance]
(
[ACCRUED] [int] NULL,
[Active] [varchar] (256) NULL,
[ActiveEnumID] [varchar] (51) NULL,
[AllocationExclude] [varchar] (256) NULL,
[AllocationExcludeEnumID] [varchar] (51) NULL,
[BillingTemplate] [bigint] NULL,
[BudgetDatesLocked] [varchar] (51) NULL,
[CLOSED] [int] NULL,
[DataArea] [varchar] (4) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[DEFAULTDIMENSION] [bigint] NULL,
[DEFAULTDIMENSIONSELLING] [bigint] NULL,
[Description] [varchar] (120) NULL,
[FINALIZATIONSTATUS] [int] NULL,
[FINALIZED] [int] NULL,
[FinancialInstanceId] [varchar] (30) NULL,
[InstanceRelationType] [bigint] NULL,
[LOT] [bigint] NULL,
[LOTSTRUCTUREELEMENT] [bigint] NULL,
[Name] [varchar] (254) NULL,
[PARTITION] [bigint] NULL,
[PostingGroup] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[RELATIONTYPE] [bigint] NULL,
[ReleaseGroup] [bigint] NULL,
[TAXENTITY] [bigint] NULL,
[TaxGroup] [varchar] (10) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsFinancialInstance] ADD CONSTRAINT [PK_SAB_ConsFinancialInstance_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_dbo_NC_Sab_ConsFinancialInstanceLot] ON [dbo].[SAB_ConsFinancialInstance] ([LOT]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[SAB_ConsFinancialInstance] TO [Eliant]
GO
GRANT SELECT ON  [dbo].[SAB_ConsFinancialInstance] TO [OH_BasicReadOnly]
GO
