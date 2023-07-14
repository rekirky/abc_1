CREATE TABLE [stage].[HcmEmployment]
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
[DefaultDimension] [varchar] (51) NULL,
[EmploymentType] [varchar] (51) NULL,
[LegalEntity] [bigint] NULL,
[ValidFrom] [varchar] (40) NULL,
[VALIDFROMTZID] [int] NULL,
[ValidTo] [varchar] (40) NULL,
[VALIDTOTZID] [int] NULL,
[Worker] [bigint] NULL,
[EEOEstablishment] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[MODIFIEDDATETIME] [varchar] (40) NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[CREATEDDATETIME] [varchar] (40) NULL,
[CREATEDBY] [varchar] (20) NULL,
[EmploymentId] [varchar] (40) NULL
) ON [PRIMARY]
GO
