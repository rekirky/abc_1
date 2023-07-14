create   view [blobTransFull].[LedgerTransVoucherLink] as select 
LSN,[DataAreaId]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[PARTITION]
,[RECID]
,[RECVERSION]
,[TransDate]=cast([TransDate] as date)
,[Voucher]
,[VoucherGroupId]
 from blobFull.LedgerTransVoucherLink t
GO
