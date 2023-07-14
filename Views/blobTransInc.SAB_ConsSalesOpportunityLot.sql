create   view [blobTransInc].[SAB_ConsSalesOpportunityLot] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Lot]
,[Opportunity]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[Status]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsSalesOpportunityLotStatus' and e.EnumCode=t.[Status]) ,StatusEnumID=[Status]
 from stage.SAB_ConsSalesOpportunityLot t
GO
