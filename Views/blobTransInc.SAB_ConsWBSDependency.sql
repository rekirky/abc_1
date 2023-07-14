create   view [blobTransInc].[SAB_ConsWBSDependency] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[LeadLag]
,[PARTITION]
,[Predecessor]
,[RECID]
,[RECVERSION]
,[Successor]
,[Type]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsWBSDependencyType' and e.EnumCode=t.[Type]) ,TypeEnumID=[Type]
 from stage.SAB_ConsWBSDependency t
GO
