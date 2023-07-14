create   view [blobTransFull].[SAB_ConsSalesDiscountType] as select 
LSN,[AllowanceType]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsSalesDiscountAllowanceType' and e.EnumCode=t.[AllowanceType]) ,AllowanceTypeEnumID=[AllowanceType]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Description]
,[DiscountType]
,[DocumentSection]
,[OH_AllowSalesToSee]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[RevenueCategory]
 from blobFull.SAB_ConsSalesDiscountType t
GO
