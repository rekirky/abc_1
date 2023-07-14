create   view [blobTransInc].[LedgerTransVoucherLink] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[DataAreaId]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[PARTITION]
,[RECID]
,[RECVERSION]
,[TransDate]=cast([TransDate] as date)
,[Voucher]
,[VoucherGroupId]
 from stage.LedgerTransVoucherLink t
GO
