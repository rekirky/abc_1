create   view [blobTransInc].[SAB_ConsOrderChange] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[ApprovedDate]=cast([ApprovedDate] as date)
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
 from stage.SAB_ConsOrderChange t
GO
