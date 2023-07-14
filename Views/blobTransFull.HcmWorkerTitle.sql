create   view [blobTransFull].[HcmWorkerTitle] as select 
LSN,[AnniversaryDateTime]=cast([AnniversaryDateTime] as date)
,[ANNIVERSARYDATETIMETZID]
,[CREATEDBY]
,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Location]
,[MODIFIEDBY]
,[MODIFIEDDATETIME]=cast([MODIFIEDDATETIME] as date)
,[OfficeLocation]
,[OriginalHireDateTime]=cast([OriginalHireDateTime] as date)
,[ORIGINALHIREDATETIMETZID]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[SeniorityDate]=cast([SeniorityDate] as date)
,[SENIORITYDATETZID]
,[Title]
,[ValidFrom]=cast([ValidFrom] as date)
,[VALIDFROMTZID]
,[ValidTo]=cast([ValidTo] as date)
,[VALIDTOTZID]
,[Worker]
,[WorksFromHome]=case when [WorksFromHome]=1 then 'Yes' else 'No' end ,WorksFromHomeFlag=cast([WorksFromHome] as bit)
 from blobFull.HcmWorkerTitle t
GO
