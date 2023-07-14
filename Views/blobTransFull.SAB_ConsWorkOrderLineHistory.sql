create   view [blobTransFull].[SAB_ConsWorkOrderLineHistory] as select 
LSN,[ChangedBy]
,[ChangeReason]
,[CostCategory]
,[CSRequestLine]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[DesignCenterAttributeChanged]=case when [DesignCenterAttributeChanged]=1 then 'Yes' else 'No' end ,DesignCenterAttributeChangedFlag=cast([DesignCenterAttributeChanged] as bit)
,[DesignCenterAttributeDateTime]=cast([DesignCenterAttributeDateTime] as date)
,[DESIGNCENTERATTRIBUTEDATETIMETZID]
,[EntryType]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsWorkOrderHistoryEntryType' and e.EnumCode=t.[EntryType]) ,EntryTypeEnumID=[EntryType]
,[EquipRentalEstimatedEndDate]=cast([EquipRentalEstimatedEndDate] as date)
,[EquipRentalStartDate]=cast([EquipRentalStartDate] as date)
,[FinancialInstance]
,[InventUnit]
,[ItemId]
,[LineAmount]=cast([LineAmount] as numeric(18,6))
,[LineNumber]
,[LineType]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsWorkOrderLineType' and e.EnumCode=t.[LineType]) ,LineTypeEnumID=[LineType]
,[Location]
,[LocationGroup]
,[Name]
,[NoteChanged]=case when [NoteChanged]=1 then 'Yes' else 'No' end ,NoteChangedFlag=cast([NoteChanged] as bit)
,[OPTION_]
,[Orientation]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsOrientation' and e.EnumCode=t.[Orientation]) ,OrientationEnumID=[Orientation]
,[PARTITION]
,[PurchPrice]
,[PurchQty]
,[PurchUnit]
,[QtyOrdered]
,[RECID]
,[RECVERSION]
,[SupplementAmount]=cast([SupplementAmount] as numeric(18,2))
,[TaxGroup]
,[TaxItemGroup]
,[TradeType]
,[ValidFrom]=cast([ValidFrom] as date)
,[VALIDFROMTZID]
,[ValidTo]=cast([ValidTo] as date)
,[VALIDTOTZID]
,[Vendor]
,[WorkOrder]
,[WorkOrderLine]
 from blobFull.SAB_ConsWorkOrderLineHistory t
GO
