create   view [blobTransInc].[SAB_ConsLotStructureElement] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[BuildingTypeId]
,[CalendarId]
,[ColorScheme]
,[CREATEDBY]
,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
,[CSExternallyManaged]
,[CSExternalVendor]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[DevelopmentId]
,[DevelopmentType]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsLotStructureElementDevelopmentType' and e.EnumCode=t.[DevelopmentType]) ,DevelopmentTypeEnumID=[DevelopmentType]
,[ElementType]
,[FacadeId]
,[InheritTeams]=case when [InheritTeams]=1 then 'Yes' else 'No' end ,InheritTeamsFlag=cast([InheritTeams] as bit)
,[IsActive]=case when [IsActive]=1 then 'Yes' else 'No' end ,IsActiveFlag=cast([IsActive] as bit)
,[IsLotAttributesInherited]
,[LEVEL_]
,[Name]
,[NestedSetLeft]
,[NestedSetRight]
,[Orientation]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsOrientationNoneLeftRight' and e.EnumCode=t.[Orientation]) ,OrientationEnumID=[Orientation]
,[ParentLotStructureElement]
,[PARTITION]
,[Party]
,[RECID]
,[RECVERSION]
,[Subfloor]
,[TarionDateTemplate]
 from stage.SAB_ConsLotStructureElement t
GO
