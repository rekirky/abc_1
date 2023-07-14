IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'OLTHOF\Executive Reports')
CREATE LOGIN [OLTHOF\Executive Reports] FROM WINDOWS
GO
CREATE USER [OLTHOF\Executive Reports] FOR LOGIN [OLTHOF\Executive Reports]
GO
