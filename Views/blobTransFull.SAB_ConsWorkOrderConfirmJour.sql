create   view [blobTransFull].[SAB_ConsWorkOrderConfirmJour] as select 
LSN,[Acknowledged]=case when [Acknowledged]=1 then 'Yes' else 'No' end ,AcknowledgedFlag=cast([Acknowledged] as bit)
,[AcknowledgedByPerson]
,[CREATEDBY]
,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[PARTITION]
,[RECID]
,[RECVERSION]
,[Type]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsWorkOrderConfirmType' and e.EnumCode=t.[Type]) ,TypeEnumID=[Type]
,[Vendor]
,[WorkOrder]
,[WorkOrderDate]=cast([WorkOrderDate] as date)
,[WorkOrderDescription]
,[WorkOrderDocNum]
,[WorkOrderVersion]
 from blobFull.SAB_ConsWorkOrderConfirmJour t
GO
