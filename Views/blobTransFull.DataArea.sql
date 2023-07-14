create   view [blobTransFull].[DataArea] as select 
LSN,[ALWAYSNATIVE]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[ID]
,[ISVIRTUAL]=case when [ISVIRTUAL]=1 then 'Yes' else 'No' end ,ISVIRTUALFlag=cast([ISVIRTUAL] as bit)
,[NAME]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[TIMEZONE]
 from blobFull.DataArea t
GO
