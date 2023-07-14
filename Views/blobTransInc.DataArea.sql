create   view [blobTransInc].[DataArea] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[ALWAYSNATIVE]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[ID]
,[ISVIRTUAL]=case when [ISVIRTUAL]=1 then 'Yes' else 'No' end ,ISVIRTUALFlag=cast([ISVIRTUAL] as bit)
,[NAME]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[TIMEZONE]
 from stage.DataArea t
GO
