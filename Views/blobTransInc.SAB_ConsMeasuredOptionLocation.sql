create   view [blobTransInc].[SAB_ConsMeasuredOptionLocation] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[BuildingTypeId]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Location]
,[LocationGroup]
,[LotStructureElement]
,[OPTION_]
,[PARTITION]
,[Purpose]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsMeasuredOptionLocationPurpose' and e.EnumCode=t.[Purpose]) ,PurposeEnumID=[Purpose]
,[RECID]
,[RECVERSION]
,[RemoveLocation]=case when [RemoveLocation]=1 then 'Yes' else 'No' end ,RemoveLocationFlag=cast([RemoveLocation] as bit)
,[UseLotSubfloor]=case when [UseLotSubfloor]=1 then 'Yes' else 'No' end ,UseLotSubfloorFlag=cast([UseLotSubfloor] as bit)
,[ValidFrom]=cast([ValidFrom] as date)
,[ValidTo]=cast([ValidTo] as date)
 from stage.SAB_ConsMeasuredOptionLocation t
GO
