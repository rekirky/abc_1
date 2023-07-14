CREATE TABLE [dbo].[SAB_ConsLotStructureElementTranslation]
(
[CREATEDBY] [varchar] (20) NULL,
[CREATEDDATETIME] [date] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Description] [varchar] (1000) NULL,
[FriendlyName] [varchar] (254) NULL,
[LanguageId] [varchar] (7) NULL,
[LotStructureElement] [bigint] NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[MODIFIEDDATETIME] [date] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[SearchText] [varchar] (254) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsLotStructureElementTranslation] ADD CONSTRAINT [PK_SAB_ConsLotStructureElementTranslation_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
