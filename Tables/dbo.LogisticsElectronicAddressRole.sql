CREATE TABLE [dbo].[LogisticsElectronicAddressRole]
(
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[ElectronicAddress] [bigint] NULL,
[LocationRole] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LogisticsElectronicAddressRole] ADD CONSTRAINT [PK_LogisticsElectronicAddressRole_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_dbo_NC_LogisticsElectronicAddressRole_RecID] ON [dbo].[LogisticsElectronicAddressRole] ([RECID]) ON [PRIMARY]
GO
