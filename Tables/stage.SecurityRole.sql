CREATE TABLE [stage].[SecurityRole]
(
[Instance] [bigint] NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[Start_LSN] [varchar] (50) NULL,
[End_LSN] [varchar] (50) NULL,
[DML_Action] [varchar] (100) NULL,
[Seq_Val] [varchar] (50) NULL,
[Update_Mask] [varchar] (400) NULL,
[RECID] [bigint] NULL,
[NAME] [varchar] (251) NULL,
[DEL_ALLOWPASTRECORDS] [bigint] NULL,
[DEL_ALLOWCURRENTRECORDS] [bigint] NULL,
[DEL_ALLOWFUTURERECORDS] [bigint] NULL,
[DESCRIPTION] [varchar] (500) NULL,
[AOTNAME] [varchar] (251) NULL,
[DEL_ISENABLED] [bigint] NULL,
[CONTEXTSTRING] [varchar] (251) NULL,
[USERLICENSETYPE] [bigint] NULL,
[ACCESSTOSENSITIVEDATA] [bigint] NULL,
[RECVERSION] [bigint] NULL
) ON [PRIMARY]
GO
