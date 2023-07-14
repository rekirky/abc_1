create   view [blobTransInc].[SAB_ConsSalesOpportunity] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[ContactByEmail]=case when [ContactByEmail]=1 then 'Yes' else 'No' end ,ContactByEmailFlag=cast([ContactByEmail] as bit)
,[ContactByMail]=case when [ContactByMail]=1 then 'Yes' else 'No' end ,ContactByMailFlag=cast([ContactByMail] as bit)
,[ContactByPhone]=case when [ContactByPhone]=1 then 'Yes' else 'No' end ,ContactByPhoneFlag=cast([ContactByPhone] as bit)
,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Inactive]=case when [Inactive]=1 then 'Yes' else 'No' end ,InactiveFlag=cast([Inactive] as bit)
,[InactiveReason]
,[OpportunityId]
,[OwnerWorker]
,[PARTITION]
,[Party]
,[PrimaryContact]
,[Probability]=cast([Probability] as numeric(18,6))
,[PropertyUseRecId]
,[RECID]
,[RECVERSION]
,[SalesContingentReason]
,[Source]
,[Type]
 from stage.SAB_ConsSalesOpportunity t
GO
