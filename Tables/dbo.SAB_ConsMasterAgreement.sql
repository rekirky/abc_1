CREATE TABLE [dbo].[SAB_ConsMasterAgreement]
(
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Description] [varchar] (120) NULL,
[LotStructureElement] [bigint] NULL,
[MasterAgreementNum] [varchar] (30) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[ValidFrom] [date] NULL,
[ValidTo] [date] NULL,
[Vendor] [bigint] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsMasterAgreement] ADD CONSTRAINT [PK_SAB_ConsMasterAgreement_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
