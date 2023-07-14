create   view [blobTransFull].[SAB_ConsEntityAttributeLookup] as select 
LSN,[Attribute]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[EntityAttribute]
,[EntityType]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsAttributeEntityType' and e.EnumCode=t.[EntityType]) ,EntityTypeEnumID=[EntityType]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[RefRecId]
 from blobFull.SAB_ConsEntityAttributeLookup t
GO
