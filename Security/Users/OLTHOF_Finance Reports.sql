IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'OLTHOF\Finance Reports')
CREATE LOGIN [OLTHOF\Finance Reports] FROM WINDOWS
GO
CREATE USER [OLTHOF\Finance Reports] FOR LOGIN [OLTHOF\Finance Reports]
GO
