create   view [blobTransFull].[SAB_ConsSalesOpportunityLot] as select 
LSN,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Lot]
,[Opportunity]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[Status]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsSalesOpportunityLotStatus' and e.EnumCode=t.[Status]) ,StatusEnumID=[Status]
 from blobFull.SAB_ConsSalesOpportunityLot t
GO
