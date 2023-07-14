create   view [blobTransFull].[SAB_ConsMasterAgreement] as select 
LSN,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Description]
,[LotStructureElement]
,[MasterAgreementNum]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[ValidFrom]=cast([ValidFrom] as date)
,[ValidTo]=cast([ValidTo] as date)
,[Vendor]
 from blobFull.SAB_ConsMasterAgreement t
GO
