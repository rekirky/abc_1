create   view [blobTransFull].[TaxOnItem] as select 
LSN,[AbatementPercent_IN]=cast([AbatementPercent_IN] as numeric(18,6))
,[CustomsChargeAsExpensePercent_IN]=cast([CustomsChargeAsExpensePercent_IN] as numeric(18,6))
,[DataAreaId]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[ExemptTax_BR]
,[LoadOnInventory_IN]
,[LoadOnInventoryPercent_IN]=cast([LoadOnInventoryPercent_IN] as numeric(18,6))
,[PARTITION]
,[RECID]
,[RECVERSION]
,[TaxationCodeTable_BR]
,[TaxCode]
,[TaxExemptCode]
,[TaxItemGroup]
,[WithoutTaxCredit_BR]
 from blobFull.TaxOnItem t
GO
