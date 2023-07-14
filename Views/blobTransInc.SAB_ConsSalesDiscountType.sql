create   view [blobTransInc].[SAB_ConsSalesDiscountType] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[AllowanceType]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsSalesDiscountAllowanceType' and e.EnumCode=t.[AllowanceType]) ,AllowanceTypeEnumID=[AllowanceType]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Description]
,[DiscountType]
,[DocumentSection]
,[OH_AllowSalesToSee]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[RevenueCategory]
 from stage.SAB_ConsSalesDiscountType t
GO
