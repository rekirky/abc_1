create   view [blobTransInc].[SAB_ConsAttribute] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[AttributeClass_BuildingType]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsAttributeClass_BuildingType' and e.EnumCode=t.[AttributeClass_BuildingType]) ,AttributeClass_BuildingTypeEnumID=[AttributeClass_BuildingType]
,[AttributeClass_LandBank]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsAttributeClass_LandBank' and e.EnumCode=t.[AttributeClass_LandBank]) ,AttributeClass_LandBankEnumID=[AttributeClass_LandBank]
,[AttributeClass_Option]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsAttributeClass_Option' and e.EnumCode=t.[AttributeClass_Option]) ,AttributeClass_OptionEnumID=[AttributeClass_Option]
,[AttributeTab]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[DataType]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsAttributeDataType' and e.EnumCode=t.[DataType]) ,DataTypeEnumID=[DataType]
,[IsEnumeration]=case when [IsEnumeration]=1 then 'Yes' else 'No' end ,IsEnumerationFlag=cast([IsEnumeration] as bit)
,[LocationDependent]=case when [LocationDependent]=1 then 'Yes' else 'No' end ,LocationDependentFlag=cast([LocationDependent] as bit)
,[MultiLine]=case when [MultiLine]=1 then 'Yes' else 'No' end ,MultiLineFlag=cast([MultiLine] as bit)
,[MultiSelect]=case when [MultiSelect]=1 then 'Yes' else 'No' end ,MultiSelectFlag=cast([MultiSelect] as bit)
,[Name]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[SalesDocumentPriceBreakout]=case when [SalesDocumentPriceBreakout]=1 then 'Yes' else 'No' end ,SalesDocumentPriceBreakoutFlag=cast([SalesDocumentPriceBreakout] as bit)
,[Sorting]
,[Usage]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsAttributeUsage' and e.EnumCode=t.[Usage]) ,UsageEnumID=[Usage]
,[UseAdjustedMeasurement]=case when [UseAdjustedMeasurement]=1 then 'Yes' else 'No' end ,UseAdjustedMeasurementFlag=cast([UseAdjustedMeasurement] as bit)
 from stage.SAB_ConsAttribute t
GO
