create   proc [stage].[prcLoadGeneralJournalAccountEntry] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.GeneralJournalAccountEntry t 
where exists 
	(select 1 from stage.GeneralJournalAccountEntry s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.GeneralJournalAccountEntry with(tablock) as t
using (select * from blobTransInc.GeneralJournalAccountEntry where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[AccountingCurrencyAmount]=s.[AccountingCurrencyAmount],[AllocationLevel]=s.[AllocationLevel],[AssetLeasePostingTypes]=s.[AssetLeasePostingTypes],[AssetLeasePostingTypesEnumID]=s.[AssetLeasePostingTypesEnumID],[ASSETLEASETRANSACTIONTYPE]=s.[ASSETLEASETRANSACTIONTYPE],[CREATEDTRANSACTIONID]=s.[CREATEDTRANSACTIONID],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[GeneralJournalEntry]=s.[GeneralJournalEntry],[HistoricalExchangeRateDate]=s.[HistoricalExchangeRateDate],[IsCorrection]=s.[IsCorrection],[IsCorrectionFlag]=s.[IsCorrectionFlag],[IsCredit]=s.[IsCredit],[IsCreditFlag]=s.[IsCreditFlag],[LedgerAccount]=s.[LedgerAccount],[LedgerDimension]=s.[LedgerDimension],[MainAccount]=s.[MainAccount],[OriginalAccountEntry]=s.[OriginalAccountEntry],[PARTITION]=s.[PARTITION],[PaymentReference]=s.[PaymentReference],[PostingType]=s.[PostingType],[PostingTypeEnumID]=s.[PostingTypeEnumID],[ProjId_SA]=s.[ProjId_SA],[ProjTableDataAreaId]=s.[ProjTableDataAreaId],[Quantity]=s.[Quantity],[ReasonRef]=s.[ReasonRef],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[ReportingCurrencyAmount]=s.[ReportingCurrencyAmount],[Text]=s.[Text],[TransactionCurrencyAmount]=s.[TransactionCurrencyAmount],[TransactionCurrencyCode]=s.[TransactionCurrencyCode]
when not matched then insert(
	[AccountingCurrencyAmount],[AllocationLevel],[AssetLeasePostingTypes],[AssetLeasePostingTypesEnumID],[ASSETLEASETRANSACTIONTYPE],[CREATEDTRANSACTIONID],[DataLakeModified_DateTime],[GeneralJournalEntry],[HistoricalExchangeRateDate],[IsCorrection],[IsCorrectionFlag],[IsCredit],[IsCreditFlag],[LedgerAccount],[LedgerDimension],[MainAccount],[OriginalAccountEntry],[PARTITION],[PaymentReference],[PostingType],[PostingTypeEnumID],[ProjId_SA],[ProjTableDataAreaId],[Quantity],[ReasonRef],[RECID],[RECVERSION],[ReportingCurrencyAmount],[Text],[TransactionCurrencyAmount],[TransactionCurrencyCode]
)
values (
[AccountingCurrencyAmount],[AllocationLevel],[AssetLeasePostingTypes],[AssetLeasePostingTypesEnumID],[ASSETLEASETRANSACTIONTYPE],[CREATEDTRANSACTIONID],[DataLakeModified_DateTime],[GeneralJournalEntry],[HistoricalExchangeRateDate],[IsCorrection],[IsCorrectionFlag],[IsCredit],[IsCreditFlag],[LedgerAccount],[LedgerDimension],[MainAccount],[OriginalAccountEntry],[PARTITION],[PaymentReference],[PostingType],[PostingTypeEnumID],[ProjId_SA],[ProjTableDataAreaId],[Quantity],[ReasonRef],[RECID],[RECVERSION],[ReportingCurrencyAmount],[Text],[TransactionCurrencyAmount],[TransactionCurrencyCode]
);

end
GO
