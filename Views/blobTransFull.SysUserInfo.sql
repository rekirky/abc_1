create   view [blobTransFull].[SysUserInfo] as select 
LSN,[AutomaticUrlUpdate]
,[compilerTarget]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SysCompilerTarget' and e.EnumCode=t.[compilerTarget]) ,compilerTargetEnumID=[compilerTarget]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[DefaultCountryRegion]
,[defaultExcelExportPath]
,[defaultExcelExportSite]
,[Density]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SysUserInfoDensity' and e.EnumCode=t.[Density]) ,DensityEnumID=[Density]
,[docuHandlingActive]
,[DOCUTOOLBARBUTTONACTIVE]
,[Email]
,[EnhancedTabSequence]=case when [EnhancedTabSequence]=1 then 'Yes' else 'No' end ,EnhancedTabSequenceFlag=cast([EnhancedTabSequence] as bit)
,[EventEmailAlertsWhen]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='EventEmailSendDefineMode' and e.EnumCode=t.[EventEmailAlertsWhen]) ,EventEmailAlertsWhenEnumID=[EventEmailAlertsWhen]
,[EventPollFrequency]
,[EventPopUpDisplayWhen]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='EventPopupShowDefineMode' and e.EnumCode=t.[EventPopUpDisplayWhen]) ,EventPopUpDisplayWhenEnumID=[EventPopUpDisplayWhen]
,[EventPopUpLinkDestination]
,[EventPopUps]
,[EventWorkflowAlternateEmail]
,[EventWorkflowShowPopup]=case when [EventWorkflowShowPopup]=1 then 'Yes' else 'No' end ,EventWorkflowShowPopupFlag=cast([EventWorkflowShowPopup] as bit)
,[EventWorkflowTasksInActionCenter]=case when [EventWorkflowTasksInActionCenter]=1 then 'Yes' else 'No' end ,EventWorkflowTasksInActionCenterFlag=cast([EventWorkflowTasksInActionCenter] as bit)
,[EventWorkflowTasksInClient]=case when [EventWorkflowTasksInClient]=1 then 'Yes' else 'No' end ,EventWorkflowTasksInClientFlag=cast([EventWorkflowTasksInClient] as bit)
,[EventWorkflowTasksInEmail]=case when [EventWorkflowTasksInEmail]=1 then 'Yes' else 'No' end ,EventWorkflowTasksInEmailFlag=cast([EventWorkflowTasksInEmail] as bit)
,[HelpMarkEmptyLinks]=case when [HelpMarkEmptyLinks]=1 then 'Yes' else 'No' end ,HelpMarkEmptyLinksFlag=cast([HelpMarkEmptyLinks] as bit)
,[HelpTheme]
,[Id]
,[Language]
,[Mailer]
,[NegativeAmountsInRed_CN]
,[OH_DevUser]
,[OH_SandboxUser]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[ShowTaskListOnDefaultDashboard]=case when [ShowTaskListOnDefaultDashboard]=1 then 'Yes' else 'No' end ,ShowTaskListOnDefaultDashboardFlag=cast([ShowTaskListOnDefaultDashboard] as bit)
,[SqmEnabled]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SysSqmEnabledClient' and e.EnumCode=t.[SqmEnabled]) ,SqmEnabledEnumID=[SqmEnabled]
,[SqmUserGuid]
,[StartPage]
,[Theme]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SysUserInfoTheme' and e.EnumCode=t.[Theme]) ,ThemeEnumID=[Theme]
,[TooltipOnFocus]=case when [TooltipOnFocus]=1 then 'Yes' else 'No' end ,TooltipOnFocusFlag=cast([TooltipOnFocus] as bit)
,[WorkflowLineItemNotificationFormat]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='WorkflowLineItemNotificationFormat' and e.EnumCode=t.[WorkflowLineItemNotificationFormat]) ,WorkflowLineItemNotificationFormatEnumID=[WorkflowLineItemNotificationFormat]
 from blobFull.SysUserInfo t
GO
