create   view [blobTransFull].[SAB_ConsOptionDescription] as select 
LSN,[BuildingTypeId]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Description]
,[FacadeId]
,[LotStructureElement]
,[Module]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='ModuleSalesPurch' and e.EnumCode=t.[Module]) ,ModuleEnumID=[Module]
,[OPTION_]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[TradeType]
,[ValidFrom]=cast([ValidFrom] as date)
,[ValidTo]=cast([ValidTo] as date)
 from blobFull.SAB_ConsOptionDescription t
GO
