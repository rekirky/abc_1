create   view [blobTransFull].[SAB_ConsVendCertificateTypeRule] as select 
LSN,[CertificateType]
,[DataArea]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[LotStartHandling]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsLotStartHandling' and e.EnumCode=t.[LotStartHandling]) ,LotStartHandlingEnumID=[LotStartHandling]
,[LotStructureElement]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[TradeType]
,[Vendor]
 from blobFull.SAB_ConsVendCertificateTypeRule t
GO
