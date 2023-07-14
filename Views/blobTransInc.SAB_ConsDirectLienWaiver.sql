create   view [blobTransInc].[SAB_ConsDirectLienWaiver] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[DocumentTemplate]
,[LienWaiverId]
,[LotStructureElement]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[Status]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsDirectLienWaiverStatus' and e.EnumCode=t.[Status]) ,StatusEnumID=[Status]
,[Type]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsDirectLienWaiverType' and e.EnumCode=t.[Type]) ,TypeEnumID=[Type]
,[Vendor]
 from stage.SAB_ConsDirectLienWaiver t
GO
