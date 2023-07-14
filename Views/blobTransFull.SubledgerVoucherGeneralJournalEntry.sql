create   view [blobTransFull].[SubledgerVoucherGeneralJournalEntry] as select 
LSN,[AccountingDate]=cast([AccountingDate] as date)
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[GeneralJournalEntry]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[SubledgerJournalEntry]
,[TransferId]
,[Voucher]
,[VoucherDataAreaId]
 from blobFull.SubledgerVoucherGeneralJournalEntry t
GO
