create   view [blobTransInc].[SAB_ConsDesignCenterInstanceValue] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
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
 from stage.SAB_ConsDesignCenterInstanceValue t
GO
