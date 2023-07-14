CREATE TABLE [stage].[SAB_ConsValue]
(
[instance] [bigint] NULL,
[LastProcessedChange_DateTime] [varchar] (40) NULL,
[DataLakeModified_DateTime] [varchar] (40) NULL,
[Start_LSN] [varchar] (40) NULL,
[End_LSN] [varchar] (40) NULL,
[DML_Action] [varchar] (40) NULL,
[Seq_Val] [varchar] (40) NULL,
[Update_Mask] [varchar] (40) NULL,
[RECID] [bigint] NULL,
[InstanceRelationType] [bigint] NULL,
[Origin] [bigint] NULL,
[DATETIMEVALUE] [varchar] (40) NULL,
[DATETIMEVALUETZID] [int] NULL,
[FLOATVALUE] [numeric] (18, 0) NULL,
[CURRENCYCODE] [varchar] (251) NULL,
[CURRENCYVALUE] [numeric] (18, 0) NULL,
[DATEVALUE] [varchar] (40) NULL,
[INTVALUE] [int] NULL,
[BOOLEANVALUE] [int] NULL,
[TEXTPROMPT] [varchar] (251) NULL,
[TEXTVALUE] [varchar] (251) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[CREATEDTRANSACTIONID] [bigint] NULL,
[RELATIONTYPE] [bigint] NULL
) ON [PRIMARY]
GO
