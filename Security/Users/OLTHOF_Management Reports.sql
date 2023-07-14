IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'OLTHOF\Management Reports')
CREATE LOGIN [OLTHOF\Management Reports] FROM WINDOWS
GO
CREATE USER [OLTHOF\Management Reports] FOR LOGIN [OLTHOF\Management Reports]
GO
