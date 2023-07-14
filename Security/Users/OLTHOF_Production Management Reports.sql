IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'OLTHOF\Production Management Reports')
CREATE LOGIN [OLTHOF\Production Management Reports] FROM WINDOWS
GO
CREATE USER [OLTHOF\Production Management Reports] FOR LOGIN [OLTHOF\Production Management Reports]
GO
