IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'OLTHOF\Land Development Reports')
CREATE LOGIN [OLTHOF\Land Development Reports] FROM WINDOWS
GO
CREATE USER [OLTHOF\Land Development Reports] FOR LOGIN [OLTHOF\Land Development Reports]
GO
