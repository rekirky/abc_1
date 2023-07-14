create   view [blobTransInc].[SAB_ConsCSRequestVendorSchedule] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[InsuranceReason]
,[LineNumber]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[Request]
,[TradeType]
,[Vendor]
,[WarrantyExpiryDate]=cast(case when [WarrantyExpiryDate] < cast('1901-01-01' as date) then null else [WarrantyExpiryDate] end as date)
,[WarrantyVendor]
 from stage.SAB_ConsCSRequestVendorSchedule t
GO
