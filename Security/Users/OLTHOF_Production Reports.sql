IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'OLTHOF\Production Reports')
CREATE LOGIN [OLTHOF\Production Reports] FROM WINDOWS
GO
CREATE USER [OLTHOF\Production Reports] FOR LOGIN [OLTHOF\Production Reports]
GO
