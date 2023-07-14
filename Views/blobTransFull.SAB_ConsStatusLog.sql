create   view [blobTransFull].[SAB_ConsStatusLog] as select 
LSN,[CREATEDBY]
,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[FinancialInstance]
,[LineNumber]
,[Opportunity]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[TransDate]=cast([TransDate] as date)
,[Type]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsStatusLogType' and e.EnumCode=t.[Type]) ,TypeEnumID=[Type]
,[Value]
 from stage.SAB_ConsStatusLog t
GO
