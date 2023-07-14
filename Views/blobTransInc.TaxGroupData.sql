create   view [blobTransInc].[TaxGroupData] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[DataAreaId]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[ExemptTax]
,[IntracomVAT]=case when [IntracomVAT]=1 then 'Yes' else 'No' end ,IntracomVATFlag=cast([IntracomVAT] as bit)
,[PARTITION]
,[RECID]
,[RECVERSION]
,[ReverseCharge_W]
,[TaxationCodeTable_BR]
,[TaxCode]
,[TaxExemptCode]
,[TaxGroup]
,[UseTax]
,[VATScheduleName_IN]
 from stage.TaxGroupData t
GO
