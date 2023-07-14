create   view [blobTransInc].[SubledgerVoucherGeneralJournalEntry] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[AccountingDate]=cast([AccountingDate] as date)
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[GeneralJournalEntry]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[SubledgerJournalEntry]
,[TransferId]
,[Voucher]
,[VoucherDataAreaId]
 from stage.SubledgerVoucherGeneralJournalEntry t
GO
