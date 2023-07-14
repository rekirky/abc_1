create   view [blobTransInc].[SAB_ConsSalesQuotationJour] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[ConfirmedDate]
,[ContractDate]
,[CREATEDBY]
,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[ExpiryDate]=cast([ExpiryDate] as date)
,[FinancialInstance]
,[Locked]=case when [Locked]=1 then 'Yes' else 'No' end ,LockedFlag=cast([Locked] as bit)
,[Lot]
,[Name]
,[OfferType]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsSalesOfferType' and e.EnumCode=t.[OfferType]) ,OfferTypeEnumID=[OfferType]
,[Opportunity]
,[PARTITION]
,[PlanChange]=case when [PlanChange]=1 then 'Yes' else 'No' end ,PlanChangeFlag=cast([PlanChange] as bit)
,[QuotationDocNum]
,[RECID]
,[RECVERSION]
,[SalesDesign]
,[SalesDesignVersion]
,[Status]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsSalesQuotationStatus' and e.EnumCode=t.[Status]) ,StatusEnumID=[Status]
,[Type]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsSalesDesignType' and e.EnumCode=t.[Type]) ,TypeEnumID=[Type]
 from stage.SAB_ConsSalesQuotationJour t
GO
