CREATE TABLE [dbo].[SAB_ConsMasterAgreementVersion]
(
[CREATEDBY] [varchar] (20) NULL,
[CREATEDDATETIME] [date] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Description] [varchar] (120) NULL,
[IsPrimary] [varchar] (3) NULL,
[IsPrimaryFlag] [bit] NULL,
[MasterAgreement] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[Status] [varchar] (256) NULL,
[StatusEnumID] [varchar] (51) NULL,
[Version] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsMasterAgreementVersion] ADD CONSTRAINT [PK_SAB_ConsMasterAgreementVersion_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
