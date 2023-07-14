create   view [blobTransFull].[SAB_ConsOrderChange] as select 
LSN,[ApprovedDate]=cast([ApprovedDate] as date)
,[ChangeReason]
,[ConfirmedDate]
,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Opportunity]
,[OrderChange]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[SaleOrigin]
,[SalesDesign]
,[Status]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsOrderChangeStatus' and e.EnumCode=t.[Status]) ,StatusEnumID=[Status]
,[ToLot]
,[Type]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsOrderChangeType' and e.EnumCode=t.[Type]) ,TypeEnumID=[Type]
 from blobFull.SAB_ConsOrderChange t
GO
