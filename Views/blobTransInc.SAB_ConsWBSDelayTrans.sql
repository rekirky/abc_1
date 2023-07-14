create   view [blobTransInc].[SAB_ConsWBSDelayTrans] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[ActivityNumber]
,[CREATEDBY]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[DelayReason]
,[FinancialInstance]
,[NumberOfDays]
,[OH_DelayOwner]
,[OH_LockState]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsWBSActivityLockStateUpdate' and e.EnumCode=t.[OH_LockState]) ,OH_LockStateEnumID=[OH_LockState]
,[OH_UpdateType]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsWBSActivityDateUpdateType' and e.EnumCode=t.[OH_UpdateType]) ,OH_UpdateTypeEnumID=[OH_UpdateType]
,[OH_UpdateTypeSet]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[SchedEndDateNew]=cast([SchedEndDateNew] as date)
,[SchedEndDateOrig]=cast([SchedEndDateOrig] as date)
,[SchedStartDateNew]=cast([SchedStartDateNew] as date)
,[SchedStartDateOrig]=cast([SchedStartDateOrig] as date)
,[TransDate]=cast([TransDate] as date)
 from stage.SAB_ConsWBSDelayTrans t
GO
