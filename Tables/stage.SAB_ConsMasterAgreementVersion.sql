CREATE TABLE [stage].[SAB_ConsMasterAgreementVersion]
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
[Description] [varchar] (120) NULL,
[IsPrimary] [varchar] (51) NULL,
[MasterAgreement] [bigint] NULL,
[Status] [varchar] (51) NULL,
[Version] [int] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[CREATEDDATETIME] [varchar] (40) NULL,
[CREATEDBY] [varchar] (20) NULL
) ON [PRIMARY]
GO
