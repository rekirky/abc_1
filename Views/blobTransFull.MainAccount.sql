create   view [blobTransFull].[MainAccount] as select 
LSN,[AccountCategoryRef]
,[AdjustmentMethod_MX]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='AdjustmentMethod_MX' and e.EnumCode=t.[AdjustmentMethod_MX]) ,AdjustmentMethod_MXEnumID=[AdjustmentMethod_MX]
,[CloseType]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='AccountCloseType' and e.EnumCode=t.[CloseType]) ,CloseTypeEnumID=[CloseType]
,[Closing]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='LedgerClosing' and e.EnumCode=t.[Closing]) ,ClosingEnumID=[Closing]
,[ConsolidationMainAccount]
,[CREATEDBY]
,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
,[CurrencyCode]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[DebitCreditBalanceDemand]
,[DebitCreditCheck]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='DebCredProposal' and e.EnumCode=t.[DebitCreditCheck]) ,DebitCreditCheckEnumID=[DebitCreditCheck]
,[DebitCreditProposal]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='DebCredProposal' and e.EnumCode=t.[DebitCreditProposal]) ,DebitCreditProposalEnumID=[DebitCreditProposal]
,[ExchangeAdjusted]=case when [ExchangeAdjusted]=1 then 'Yes' else 'No' end ,ExchangeAdjustedFlag=cast([ExchangeAdjusted] as bit)
,[ExchangeAdjustmentRateType]
,[FinancialReportingExchangeRateType]
,[FinancialReportingTranslationType]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='FinancialReportingTranslationType' and e.EnumCode=t.[FinancialReportingTranslationType]) ,FinancialReportingTranslationTypeEnumID=[FinancialReportingTranslationType]
,[InflationAdjustment_MX]
,[LedgerChartOfAccounts]
,[MainAccountId]
,[MainAccountTemplate]
,[MandatoryPaymentReference]=case when [MandatoryPaymentReference]=1 then 'Yes' else 'No' end ,MandatoryPaymentReferenceFlag=cast([MandatoryPaymentReference] as bit)
,[MODIFIEDBY]
,[MODIFIEDDATETIME]=cast([MODIFIEDDATETIME] as date)
,[Monetary]
,[Name]
,[OffsetLedgerDimension]
,[OpeningAccount]
,[ParentMainAccount]
,[PARTITION]
,[PostingType]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='LedgerPostingType' and e.EnumCode=t.[PostingType]) ,PostingTypeEnumID=[PostingType]
,[RECID]
,[RECVERSION]
,[RepomoType_MX]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='RepomoType_MX' and e.EnumCode=t.[RepomoType_MX]) ,RepomoType_MXEnumID=[RepomoType_MX]
,[ReportingAccountType]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='DimensionLedgerAccountReportingType' and e.EnumCode=t.[ReportingAccountType]) ,ReportingAccountTypeEnumID=[ReportingAccountType]
,[ReportingExchangeAdjustmentRateType]
,[SRUCode]
,[StandardMainAccount_W]
,[TransferYearEndAccount_ES]
,[Type]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='DimensionLedgerAccountType' and e.EnumCode=t.[Type]) ,TypeEnumID=[Type]
,[UnitOfMeasure]
,[UserInfoId]
,[ValidateCurrency]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='FieldControl' and e.EnumCode=t.[ValidateCurrency]) ,ValidateCurrencyEnumID=[ValidateCurrency]
,[ValidatePosting]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='FieldControl' and e.EnumCode=t.[ValidatePosting]) ,ValidatePostingEnumID=[ValidatePosting]
,[ValidateUser]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='FieldControl' and e.EnumCode=t.[ValidateUser]) ,ValidateUserEnumID=[ValidateUser]
 from blobFull.MainAccount t
GO
