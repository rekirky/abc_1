create   view [blobTransInc].[SAB_ConsAllocationTable] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[AllocationId]
,[AllocationRule]
,[BudgetExceeded]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[ElementType]
,[FromDate]=cast([FromDate] as date)
,[LotStructureElementDestination]
,[PARTITION]
,[Posted]=case when [Posted]=1 then 'Yes' else 'No' end ,PostedFlag=cast([Posted] as bit)
,[RECID]
,[RECVERSION]
,[ToDate]=cast([ToDate] as date)
,[TransDate]=cast([TransDate] as date)
,[Voucher]
 from stage.SAB_ConsAllocationTable t
GO
