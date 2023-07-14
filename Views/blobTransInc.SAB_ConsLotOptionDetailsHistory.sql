create   view [blobTransInc].[SAB_ConsLotOptionDetailsHistory] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[CREATEDBY]
,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[DiscountAmount]=cast([DiscountAmount] as numeric(18,2))
,[DiscountType]
,[DynamicBOMDate]=cast([DynamicBOMDate] as date)
,[FinancialInstance]
,[ItemId]
,[LineAmount]=cast([LineAmount] as numeric(18,2))
,[Location]
,[LocationGroup]
,[LotStart]
,[MeasuredOptionChild]=case when [MeasuredOptionChild]=1 then 'Yes' else 'No' end ,MeasuredOptionChildFlag=cast([MeasuredOptionChild] as bit)
,[Measurement]=cast([Measurement] as numeric(18,2))
,[MeasurementUnadjusted]=cast([MeasurementUnadjusted] as numeric(18,2))
,[OPTION_]
,[OptionAddSalesPriceToBase]
,[OptionIncludedOption]=case when [OptionIncludedOption]=1 then 'Yes' else 'No' end ,OptionIncludedOptionFlag=cast([OptionIncludedOption] as bit)
,[OptionMandatory]=case when [OptionMandatory]=1 then 'Yes' else 'No' end ,OptionMandatoryFlag=cast([OptionMandatory] as bit)
,[OptionMaster]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[SalesOpportunity]
,[SalesPrice]
,[SalesQty]
,[Source]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsLotDetailsSource' and e.EnumCode=t.[Source]) ,SourceEnumID=[Source]
,[Type]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsSalesLineType' and e.EnumCode=t.[Type]) ,TypeEnumID=[Type]
,[ZeroPriceIndicator]
 from stage.SAB_ConsLotOptionDetailsHistory t
GO
