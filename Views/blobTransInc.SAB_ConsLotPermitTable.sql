create   view [blobTransInc].[SAB_ConsLotPermitTable] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[FinancialInstance]
,[PARTITION]
,[PermitDate]=cast(case when [PermitDate] < cast('1901-01-01' as date) then null else [PermitDate] end as date)
,[PermitNumber]
,[PermitType]
,[RECID]
,[RECVERSION]
 from stage.SAB_ConsLotPermitTable t
GO
