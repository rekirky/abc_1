create   view [blobTransInc].[Tax1099Fields] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[DataAreaId]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Description]
,[MODIFIEDBY]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[Tax1099Amount]=cast([Tax1099Amount] as numeric(18,2))
,[Tax1099Box]
,[Tax1099FieldNum]
,[Tax1099Form]
,[Tax1099Type]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='Tax1099Type' and e.EnumCode=t.[Tax1099Type]) ,Tax1099TypeEnumID=[Tax1099Type]
 from stage.Tax1099Fields t
GO
