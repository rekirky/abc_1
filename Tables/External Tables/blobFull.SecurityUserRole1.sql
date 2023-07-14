CREATE EXTERNAL TABLE [blobFull].[SecurityUserRole]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[USER_] [varchar] (251) NULL,
[SECURITYROLE] [bigint] NULL,
[ASSIGNMENTSTATUS] [bigint] NULL,
[ASSIGNMENTMODE] [bigint] NULL,
[VALIDFROM] [varchar] (40) NULL,
[VALIDFROMTZID] [bigint] NULL,
[VALIDTO] [varchar] (40) NULL,
[VALIDTOTZID] [bigint] NULL,
[RECVERSION] [bigint] NULL,
[PARTITION] [bigint] NULL
)
WITH
(
LOCATION = N'Tables/General/Miscellaneous/SecurityUserRole/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
