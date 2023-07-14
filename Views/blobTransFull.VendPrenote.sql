create   view [blobTransFull].[VendPrenote] as select 
LSN,[BankAccountId]
,[CREATEDBY]
,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
,[DataAreaId]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[MODIFIEDBY]
,[MODIFIEDDATETIME]=cast([MODIFIEDDATETIME] as date)
,[PARTITION]
,[PrenoteApprovedDate]=cast(case when [PrenoteApprovedDate] < cast('1901-01-01' as date) then null else dbo.fnConvertUtcStringToLocalDate([PrenoteApprovedDate]) end as date)
,[PRENOTEAPPROVEDDATETZID]
,[RECID]
,[RECVERSION]
,[VendAccount]
,[VendAccountId]
 from blobFull.VendPrenote t
GO
