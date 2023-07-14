create   view [blobTransInc].[SAB_ConsEntityAttributeLookup] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[Attribute]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[EntityAttribute]
,[EntityType]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsAttributeEntityType' and e.EnumCode=t.[EntityType]) ,EntityTypeEnumID=[EntityType]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[RefRecId]
 from stage.SAB_ConsEntityAttributeLookup t
GO
