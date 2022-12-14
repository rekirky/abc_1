CREATE TABLE [dbo].[Account1]
(
[Id] [bigint] NOT NULL IDENTITY(1, 1),
[Ver] [int] NOT NULL,
[SrcAccountID] [varchar] (127) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Type] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ShortName] [varchar] (511) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FullName] [varchar] (511) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Status] [varchar] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LastUpdated] [datetime] NOT NULL CONSTRAINT [DF_Account_LastUpdated] DEFAULT (getdate()),
[UbtiFlag] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SourceSystem] [varchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EffectiveDate] [date] NULL CONSTRAINT [DF_Account_EffectiveDate] DEFAULT (getdate()),
[EndDate] [date] NULL,
[TenantId] [int] NOT NULL CONSTRAINT [DF_Account_TenantID] DEFAULT ((1000))
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Account1] ADD CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED ([Id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IdxAccountSrcSysLastUpd] ON [dbo].[Account1] ([SourceSystem], [LastUpdated]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Account1] ADD CONSTRAINT [UQ_Account] UNIQUE NONCLUSTERED ([SrcAccountID], [SourceSystem], [TenantId]) ON [PRIMARY]
GO
