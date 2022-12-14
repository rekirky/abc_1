CREATE TABLE [dbo].[TABLEA]
(
[runid] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ruleid] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[statscreated] [datetime] NOT NULL,
[statsupdated] [datetime] NOT NULL,
[ruletype] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ruleblock] [int] NOT NULL,
[rulenum] [int] NOT NULL,
[rulesubscript] [int] NOT NULL,
[controllerid] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[tabledatabase] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[tableschema] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[tablename] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[tablecolumn] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[rowoperations] [bigint] NULL,
[coloperations] [bigint] NULL
) ON [PRIMARY]
GO
