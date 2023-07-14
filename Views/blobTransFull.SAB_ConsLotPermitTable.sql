create   view [blobTransFull].[SAB_ConsLotPermitTable] as select 
LSN,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[FinancialInstance]
,[PARTITION]
,[PermitDate]=cast(case when [PermitDate] < cast('1901-01-01' as date) then null else [PermitDate] end as date)
,[PermitNumber]
,[PermitType]
,[RECID]
,[RECVERSION]
 from blobFull.SAB_ConsLotPermitTable t
GO
