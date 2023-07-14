CREATE TABLE [dbo].[TaxGroupData]
(
[DataAreaId] [varchar] (4) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[ExemptTax] [varchar] (51) NULL,
[IntracomVAT] [varchar] (3) NULL,
[IntracomVATFlag] [bit] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[ReverseCharge_W] [varchar] (51) NULL,
[TaxationCodeTable_BR] [bigint] NULL,
[TaxCode] [varchar] (10) NULL,
[TaxExemptCode] [varchar] (10) NULL,
[TaxGroup] [varchar] (10) NULL,
[UseTax] [varchar] (51) NULL,
[VATScheduleName_IN] [bigint] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TaxGroupData] ADD CONSTRAINT [PK_TaxGroupData_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_dbo_NC_TaxGroupData] ON [dbo].[TaxGroupData] ([TaxCode], [DataAreaId]) ON [PRIMARY]
GO
