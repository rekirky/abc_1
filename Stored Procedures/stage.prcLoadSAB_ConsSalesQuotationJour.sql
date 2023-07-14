create   proc [stage].[prcLoadSAB_ConsSalesQuotationJour] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsSalesQuotationJour t 
where exists 
	(select 1 from stage.SAB_ConsSalesQuotationJour s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsSalesQuotationJour with(tablock) as t
using (select * from blobTransInc.SAB_ConsSalesQuotationJour where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[ConfirmedDate]=s.[ConfirmedDate],[ContractDate]=s.[ContractDate],[CREATEDBY]=s.[CREATEDBY],[CREATEDDATETIME]=s.[CREATEDDATETIME],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[ExpiryDate]=s.[ExpiryDate],[FinancialInstance]=s.[FinancialInstance],[Locked]=s.[Locked],[LockedFlag]=s.[LockedFlag],[Lot]=s.[Lot],[Name]=s.[Name],[OfferType]=s.[OfferType],[OfferTypeEnumID]=s.[OfferTypeEnumID],[Opportunity]=s.[Opportunity],[PARTITION]=s.[PARTITION],[PlanChange]=s.[PlanChange],[PlanChangeFlag]=s.[PlanChangeFlag],[QuotationDocNum]=s.[QuotationDocNum],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[SalesDesign]=s.[SalesDesign],[SalesDesignVersion]=s.[SalesDesignVersion],[Status]=s.[Status],[StatusEnumID]=s.[StatusEnumID],[Type]=s.[Type],[TypeEnumID]=s.[TypeEnumID]
when not matched then insert(
	[ConfirmedDate],[ContractDate],[CREATEDBY],[CREATEDDATETIME],[DataLakeModified_DateTime],[ExpiryDate],[FinancialInstance],[Locked],[LockedFlag],[Lot],[Name],[OfferType],[OfferTypeEnumID],[Opportunity],[PARTITION],[PlanChange],[PlanChangeFlag],[QuotationDocNum],[RECID],[RECVERSION],[SalesDesign],[SalesDesignVersion],[Status],[StatusEnumID],[Type],[TypeEnumID]
)
values (
[ConfirmedDate],[ContractDate],[CREATEDBY],[CREATEDDATETIME],[DataLakeModified_DateTime],[ExpiryDate],[FinancialInstance],[Locked],[LockedFlag],[Lot],[Name],[OfferType],[OfferTypeEnumID],[Opportunity],[PARTITION],[PlanChange],[PlanChangeFlag],[QuotationDocNum],[RECID],[RECVERSION],[SalesDesign],[SalesDesignVersion],[Status],[StatusEnumID],[Type],[TypeEnumID]
);

end
GO
