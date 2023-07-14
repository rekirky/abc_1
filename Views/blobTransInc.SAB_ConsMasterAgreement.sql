create   view [blobTransInc].[SAB_ConsMasterAgreement] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Description]
,[LotStructureElement]
,[MasterAgreementNum]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[ValidFrom]=cast([ValidFrom] as date)
,[ValidTo]=cast([ValidTo] as date)
,[Vendor]
 from stage.SAB_ConsMasterAgreement t
GO
