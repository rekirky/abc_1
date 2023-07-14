create   view [blobTransFull].[SAB_ConsDynamicWBSActivityTask] as select 
LSN,[ActivityTask]
,[BuildingTypeId]
,[CostCategory]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[EnumerationAttributeValue]
,[FacadeId]
,[InternalExternal]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsWBSActivityTaskInternalExternal' and e.EnumCode=t.[InternalExternal]) ,InternalExternalEnumID=[InternalExternal]
,[LotStructureElement]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[ReportingActivity]
,[ValidFrom]=cast([ValidFrom] as date)
,[ValidTo]=cast([ValidTo] as date)
 from blobFull.SAB_ConsDynamicWBSActivityTask t
GO
