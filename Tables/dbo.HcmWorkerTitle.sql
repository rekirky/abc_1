CREATE TABLE [dbo].[HcmWorkerTitle]
(
[AnniversaryDateTime] [date] NULL,
[ANNIVERSARYDATETIMETZID] [int] NULL,
[CREATEDBY] [varchar] (20) NULL,
[CREATEDDATETIME] [date] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Location] [bigint] NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[MODIFIEDDATETIME] [date] NULL,
[OfficeLocation] [varchar] (255) NULL,
[OriginalHireDateTime] [date] NULL,
[ORIGINALHIREDATETIMETZID] [int] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[SeniorityDate] [date] NULL,
[SENIORITYDATETZID] [int] NULL,
[Title] [bigint] NULL,
[ValidFrom] [date] NULL,
[VALIDFROMTZID] [int] NULL,
[ValidTo] [date] NULL,
[VALIDTOTZID] [int] NULL,
[Worker] [bigint] NULL,
[WorksFromHome] [varchar] (3) NULL,
[WorksFromHomeFlag] [bit] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HcmWorkerTitle] ADD CONSTRAINT [PK_HcmWorkerTitle_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
