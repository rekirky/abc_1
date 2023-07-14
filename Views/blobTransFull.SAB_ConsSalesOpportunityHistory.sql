create   view [blobTransFull].[SAB_ConsSalesOpportunityHistory] as select 
LSN,[AppointmentDuration]
,[AppointmentType]
,[CREATEDBY]
,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[LineNumber]
,[LotStructureElement]
,[OpportunityParty]
,[Origin]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsSalesOpportunityHistoryOrigin' and e.EnumCode=t.[Origin]) ,OriginEnumID=[Origin]
,[PARTITION]
,[Purpose]
,[Rating]
,[RECID]
,[RECVERSION]
,[SalesRepresentativeWorker]
,[ScheduleStatus]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsSalesOpportunityHistoryScheduleStatus' and e.EnumCode=t.[ScheduleStatus]) ,ScheduleStatusEnumID=[ScheduleStatus]
,[Source]
,[TransDateTime]=cast([TransDateTime] as date)
,[TRANSDATETIMETZID]
,[Type]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsSalesOpportunityHistoryType' and e.EnumCode=t.[Type]) ,TypeEnumID=[Type]
 from blobFull.SAB_ConsSalesOpportunityHistory t
GO
