create   view [blobTransFull].[SAB_ConsLotStructureElementType] as select 
LSN,[AllocationSource]=case when [AllocationSource]=1 then 'Yes' else 'No' end ,AllocationSourceFlag=cast([AllocationSource] as bit)
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[ElementType]
,[OH_EnableForQuickQuote]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[ReportingElement]=case when [ReportingElement]=1 then 'Yes' else 'No' end ,ReportingElementFlag=cast([ReportingElement] as bit)
,[ShowInOptionSelect]=case when [ShowInOptionSelect]=1 then 'Yes' else 'No' end ,ShowInOptionSelectFlag=cast([ShowInOptionSelect] as bit)
,[SortOrder]
,[WorkOrderBudget]=case when [WorkOrderBudget]=1 then 'Yes' else 'No' end ,WorkOrderBudgetFlag=cast([WorkOrderBudget] as bit)
 from blobFull.SAB_ConsLotStructureElementType t
GO
