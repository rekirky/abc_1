CREATE TABLE [stage].[TaxGroupData]
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
[ExemptTax] [varchar] (51) NULL,
[IntracomVAT] [varchar] (51) NULL,
[TaxationCodeTable_BR] [bigint] NULL,
[TaxCode] [varchar] (10) NULL,
[TaxExemptCode] [varchar] (10) NULL,
[TaxGroup] [varchar] (10) NULL,
[UseTax] [varchar] (51) NULL,
[VATScheduleName_IN] [bigint] NULL,
[ReverseCharge_W] [varchar] (51) NULL,
[DataAreaId] [varchar] (4) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL
) ON [PRIMARY]
GO
