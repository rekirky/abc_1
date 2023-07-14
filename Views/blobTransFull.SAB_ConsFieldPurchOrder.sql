create   view [blobTransFull].[SAB_ConsFieldPurchOrder] as select 
LSN,[ChangeReason]
,[CREATEDBY]
,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
,[CSInsuranceReason]
,[CSRequest]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[EquipRentalStartDate]=cast([EquipRentalStartDate] as date)
,[FieldPurchOrderId]
,[FinancialInstance]
,[InternalExternal]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='InternalExternal' and e.EnumCode=t.[InternalExternal]) ,InternalExternalEnumID=[InternalExternal]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[Responsibility]
,[State]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsFieldPurchOrderStatus' and e.EnumCode=t.[State]) ,StateEnumID=[State]
,[Type]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsFieldPurchOrderType' and e.EnumCode=t.[Type]) ,TypeEnumID=[Type]
,[UseClaimRequest]=case when [UseClaimRequest]=1 then 'Yes' else 'No' end ,UseClaimRequestFlag=cast([UseClaimRequest] as bit)
,[Vendor]
,[WorkOrder]
,[WorkOrderDescription]
 from stage.SAB_ConsFieldPurchOrder t
GO
