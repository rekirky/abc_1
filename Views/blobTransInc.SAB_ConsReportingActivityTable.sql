create   view [blobTransInc].[SAB_ConsReportingActivityTable] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[AmendmentApproval]=case when [AmendmentApproval]=1 then 'Yes' else 'No' end ,AmendmentApprovalFlag=cast([AmendmentApproval] as bit)
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Impact]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsWBSImpact' and e.EnumCode=t.[Impact]) ,ImpactEnumID=[Impact]
,[OH_ActivityPurposeCriticalPath]=case when [OH_ActivityPurposeCriticalPath]=1 then 'Yes' else 'No' end ,OH_ActivityPurposeCriticalPathFlag=cast([OH_ActivityPurposeCriticalPath] as bit)
,[OH_ActivityPurposeReportingGroup]
,[OH_ShowActivityPurposeOnVendPortal]
,[OH_ShowOnBuyerPortal]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[ReportingActivityId]
,[RequireForLotStart]=case when [RequireForLotStart]=1 then 'Yes' else 'No' end ,RequireForLotStartFlag=cast([RequireForLotStart] as bit)
,[RequireIndividualActivityTaskCompletion]=case when [RequireIndividualActivityTaskCompletion]=1 then 'Yes' else 'No' end ,RequireIndividualActivityTaskCompletionFlag=cast([RequireIndividualActivityTaskCompletion] as bit)
,[Sorting]
 from stage.SAB_ConsReportingActivityTable t
GO
