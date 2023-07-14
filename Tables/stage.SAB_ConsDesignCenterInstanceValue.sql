CREATE TABLE [stage].[SAB_ConsDesignCenterInstanceValue]
(
[instance] [bigint] NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[Start_LSN] [varchar] (50) NULL,
[End_LSN] [varchar] (50) NULL,
[DML_Action] [varchar] (100) NULL,
[Seq_Val] [varchar] (50) NULL,
[Update_Mask] [varchar] (400) NULL,
[RECID] [bigint] NULL,
[InstanceRelationType] [bigint] NULL,
[SALESQUICKQUOTATION] [bigint] NULL,
[OPTIONTEMPLATE] [bigint] NULL,
[PHASERELEASELOT] [bigint] NULL,
[FINANCIALINSTANCE] [bigint] NULL,
[SALESDESIGNVERSION] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[RELATIONTYPE] [bigint] NULL,
[PSEUDOLOT] [bigint] NULL
) ON [PRIMARY]
GO
