create   view [blobTransInc].[SAB_ConsLotOptionDetails] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[BaseSalesPriceComponent]
,[CostPrice]=cast([CostPrice] as numeric(18,2))
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[DiscountAmount]=cast([DiscountAmount] as numeric(18,2))
,[DiscountType]
,[FinancialInstance]
,[ItemId]
,[LineAmount]=cast([LineAmount] as numeric(18,2))
,[LineNumber]
,[Location]
,[LocationGroup]
,[MeasuredOptionChild]=case when [MeasuredOptionChild]=1 then 'Yes' else 'No' end ,MeasuredOptionChildFlag=cast([MeasuredOptionChild] as bit)
,[Measurement]=cast([Measurement] as numeric(18,2))
,[MeasurementUnadjusted]=cast([MeasurementUnadjusted] as numeric(18,2))
,[Name]
,[OPTION_]
,[OptionAddSalesPriceToBase]
,[OptionIncludedOption]=case when [OptionIncludedOption]=1 then 'Yes' else 'No' end ,OptionIncludedOptionFlag=cast([OptionIncludedOption] as bit)
,[OptionMandatory]=case when [OptionMandatory]=1 then 'Yes' else 'No' end ,OptionMandatoryFlag=cast([OptionMandatory] as bit)
,[OptionMaster]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[RequiredOption]=case when [RequiredOption]=1 then 'Yes' else 'No' end ,RequiredOptionFlag=cast([RequiredOption] as bit)
,[SalesPrice]
,[SalesPriceOverriden]=case when [SalesPriceOverriden]=1 then 'Yes' else 'No' end ,SalesPriceOverridenFlag=cast([SalesPriceOverriden] as bit)
,[SalesQty]
,[Type]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsSalesLineType' and e.EnumCode=t.[Type]) ,TypeEnumID=[Type]
,[ZeroPriceIndicator]
 from stage.SAB_ConsLotOptionDetails t
GO
