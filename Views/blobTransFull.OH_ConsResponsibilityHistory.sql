create   view [blobTransFull].[OH_ConsResponsibilityHistory] as select 
LSN,[AddedDate]=cast([AddedDate] as date)
,[ADDEDDATETZID]
,[CREATEDBY]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[FinancialInstance]
,[IsPrimary]=case when [IsPrimary]=1 then 'Yes' else 'No' end ,IsPrimaryFlag=cast([IsPrimary] as bit)
,[MODIFIEDBY]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[RefRecId]
,[RemovedDate]=cast([RemovedDate] as date)
,[REMOVEDDATETZID]
,[Responsibility]
,[SYSROWVERSIONNUMBER]
,[Worker]
 from blobFull.OH_ConsResponsibilityHistory t
GO
