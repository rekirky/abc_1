CREATE TABLE [dbo].[SAB_ConsCSRequestWorkDetailLine]
(
[Amount] [numeric] (18, 2) NULL,
[CostCategory] [bigint] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[LineNumber] [bigint] NULL,
[Name] [varchar] (1000) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[RequestLine] [bigint] NULL,
[RequestWorkDetail] [bigint] NULL,
[TaxGroup] [varchar] (10) NULL,
[TaxItemGroup] [varchar] (10) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsCSRequestWorkDetailLine] ADD CONSTRAINT [PK_SAB_ConsCSRequestWorkDetailLine_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
