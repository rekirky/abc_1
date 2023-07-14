create   view [blobTransInc].[SAB_ConsLotStartLine] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[FinancialInstance]
,[Inactive]=case when [Inactive]=1 then 'Yes' else 'No' end ,InactiveFlag=cast([Inactive] as bit)
,[LotStart]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[WBSBuildingTypeEnumerationAttributeValue]
 from stage.SAB_ConsLotStartLine t
GO
