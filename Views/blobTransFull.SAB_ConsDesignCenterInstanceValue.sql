create   view [blobTransFull].[SAB_ConsDesignCenterInstanceValue] as select 
LSN,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[FINANCIALINSTANCE]
,[InstanceRelationType]
,[OPTIONTEMPLATE]
,[PARTITION]
,[PHASERELEASELOT]
,[PSEUDOLOT]
,[RECID]
,[RECVERSION]
,[RELATIONTYPE]
,[SALESDESIGNVERSION]
,[SALESQUICKQUOTATION]
 from blobFull.SAB_ConsDesignCenterInstanceValue t
GO
