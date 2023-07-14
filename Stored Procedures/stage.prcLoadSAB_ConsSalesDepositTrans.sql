create   proc [stage].[prcLoadSAB_ConsSalesDepositTrans] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsSalesDepositTrans t 
where exists 
	(select 1 from stage.SAB_ConsSalesDepositTrans s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsSalesDepositTrans with(tablock) as t
using (select * from blobTransInc.SAB_ConsSalesDepositTrans where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[AlternateRemitToPerson]=s.[AlternateRemitToPerson],[Amount]=s.[Amount],[Correction]=s.[Correction],[CorrectionFlag]=s.[CorrectionFlag],[DataAreaId]=s.[DataAreaId],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[DeductedAmount]=s.[DeductedAmount],[DepositReasonId]=s.[DepositReasonId],[DepositRefund]=s.[DepositRefund],[LineNumber]=s.[LineNumber],[Opportunity]=s.[Opportunity],[PARTITION]=s.[PARTITION],[PaymentDate]=s.[PaymentDate],[PaymMode]=s.[PaymMode],[PaymReference]=s.[PaymReference],[PostingProfile]=s.[PostingProfile],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[SaleOrigin]=s.[SaleOrigin],[SalesDesign]=s.[SalesDesign],[TransDate]=s.[TransDate],[Type]=s.[Type],[TypeEnumID]=s.[TypeEnumID],[Voucher]=s.[Voucher]
when not matched then insert(
	[AlternateRemitToPerson],[Amount],[Correction],[CorrectionFlag],[DataAreaId],[DataLakeModified_DateTime],[DeductedAmount],[DepositReasonId],[DepositRefund],[LineNumber],[Opportunity],[PARTITION],[PaymentDate],[PaymMode],[PaymReference],[PostingProfile],[RECID],[RECVERSION],[SaleOrigin],[SalesDesign],[TransDate],[Type],[TypeEnumID],[Voucher]
)
values (
[AlternateRemitToPerson],[Amount],[Correction],[CorrectionFlag],[DataAreaId],[DataLakeModified_DateTime],[DeductedAmount],[DepositReasonId],[DepositRefund],[LineNumber],[Opportunity],[PARTITION],[PaymentDate],[PaymMode],[PaymReference],[PostingProfile],[RECID],[RECVERSION],[SaleOrigin],[SalesDesign],[TransDate],[Type],[TypeEnumID],[Voucher]
);

end
GO
