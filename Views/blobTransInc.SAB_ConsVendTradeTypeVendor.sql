create   view [blobTransInc].[SAB_ConsVendTradeTypeVendor] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[BuildingTypeId]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[FacadeId]
,[IsPrimary]=case when [IsPrimary]=1 then 'Yes' else 'No' end ,IsPrimaryFlag=cast([IsPrimary] as bit)
,[ItemId]
,[LotStructureElement]
,[OH_VendorSelectionBidding]
,[OPTION_]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[TradeType]
,[ValidFrom]=cast([ValidFrom] as date)
,[ValidTo]=cast(case when [ValidTo] < cast('1901-01-01' as date) or [ValidTo] is null then '9000-01-01' else [ValidTo] end as date)
,[Vendor]
 from stage.SAB_ConsVendTradeTypeVendor t
GO
