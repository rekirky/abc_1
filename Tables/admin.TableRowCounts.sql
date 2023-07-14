CREATE TABLE [admin].[TableRowCounts]
(
[tableName] [varchar] (200) NULL,
[rowz] [int] NULL,
[asAt] [datetime] NULL,
[ID] [int] NULL,
[skema] [varchar] (50) NULL,
[RecIDsum] [float] NULL,
[RecIDsumFormatted] AS (format([RecIDsum],'0,0'))
) ON [PRIMARY]
GO
