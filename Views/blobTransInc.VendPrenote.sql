create   view [blobTransInc].[VendPrenote] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[BankAccountId]
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
 from stage.VendPrenote t
GO
