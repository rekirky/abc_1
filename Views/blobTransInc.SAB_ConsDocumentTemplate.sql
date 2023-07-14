create   view [blobTransInc].[SAB_ConsDocumentTemplate] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[DocumentType]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsDocumentType' and e.EnumCode=t.[DocumentType]) ,DocumentTypeEnumID=[DocumentType]
,[DocuRefRecId]
,[Name]
,[PARTITION]
,[Priority]
,[RECID]
,[RECVERSION]
 from stage.SAB_ConsDocumentTemplate t
GO
