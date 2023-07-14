create   view [blobTransFull].[SAB_ConsLotStartLine] as select 
LSN,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[FinancialInstance]
,[Inactive]=case when [Inactive]=1 then 'Yes' else 'No' end ,InactiveFlag=cast([Inactive] as bit)
,[LotStart]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[WBSBuildingTypeEnumerationAttributeValue]
 from blobFull.SAB_ConsLotStartLine t
GO
