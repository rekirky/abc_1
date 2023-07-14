create   view [blobTransInc].[SAB_ConsSalesCommission] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[AdjustedAmount]=cast([AdjustedAmount] as numeric(18,2))
,[Agent]
,[Amount]=cast([Amount] as numeric(18,2))
,[Broker]
,[CalcAmount]=cast([CalcAmount] as numeric(18,2))
,[CREATEDBY]
,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Lot]
,[MODIFIEDBY]
,[MODIFIEDDATETIME]=cast([MODIFIEDDATETIME] as date)
,[Opportunity]
,[PARTITION]
,[PercentRule]
,[RECID]
,[RECVERSION]
 from stage.SAB_ConsSalesCommission t
GO
