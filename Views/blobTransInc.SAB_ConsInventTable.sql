create   view [blobTransInc].[SAB_ConsInventTable] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[BidGroupByElementType]
,[CostCategory]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Depth]=cast([Depth] as numeric(18,6))
,[Description]
,[Dimensional]=case when [Dimensional]=1 then 'Yes' else 'No' end ,DimensionalFlag=cast([Dimensional] as bit)
,[DocumentSection]
,[EquipRentalGroupItemId]
,[Height]=cast([Height] as numeric(18,6))
,[Inactive]=case when [Inactive]=1 then 'Yes' else 'No' end ,InactiveFlag=cast([Inactive] as bit)
,[InventUnitId]
,[ItemId]
,[Manufacturer]
,[Name]
,[PARTITION]
,[PurchUnitId]
,[RECID]
,[RECVERSION]
,[RequireLotStartOverride]=case when [RequireLotStartOverride]=1 then 'Yes' else 'No' end ,RequireLotStartOverrideFlag=cast([RequireLotStartOverride] as bit)
,[SummaryQty]=cast([SummaryQty] as numeric(18,6))
,[SummaryUnitId]
,[SummaryWorkOrder]=case when [SummaryWorkOrder]=1 then 'Yes' else 'No' end ,SummaryWorkOrderFlag=cast([SummaryWorkOrder] as bit)
,[TaxItemGroup]
,[Type]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsItemType' and e.EnumCode=t.[Type]) ,TypeEnumID=[Type]
,[UseNetMeasurement]=case when [UseNetMeasurement]=1 then 'Yes' else 'No' end ,UseNetMeasurementFlag=cast([UseNetMeasurement] as bit)
,[Width]=cast([Width] as numeric(18,6))
 from stage.SAB_ConsInventTable t
GO
