CREATE TABLE [stage].[Tax1099Fields]
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
[Description] [varchar] (50) NULL,
[Tax1099Amount] [float] NULL,
[Tax1099Box] [varchar] (10) NULL,
[Tax1099FieldNum] [int] NULL,
[Tax1099Form] [varchar] (10) NULL,
[Tax1099Type] [varchar] (51) NULL,
[DataAreaId] [varchar] (4) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[MODIFIEDBY] [varchar] (20) NULL
) ON [PRIMARY]
GO
