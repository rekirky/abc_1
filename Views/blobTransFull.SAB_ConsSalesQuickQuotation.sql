create   view [blobTransFull].[SAB_ConsSalesQuickQuotation] as select 
LSN,[BuildingTypeId]
,[ColorScheme]
,[CREATEDBY]
,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Description]
,[FacadeId]
,[LotStructureElement]
,[Opportunity]
,[Orientation]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsOrientationNoneLeftRight' and e.EnumCode=t.[Orientation]) ,OrientationEnumID=[Orientation]
,[OwnerWorker]
,[PARTITION]
,[QuickQuotationId]
,[RECID]
,[RECVERSION]
 from blobFull.SAB_ConsSalesQuickQuotation t
GO
