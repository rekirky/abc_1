IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'OLTHOF\Purchasing Reports')
CREATE LOGIN [OLTHOF\Purchasing Reports] FROM WINDOWS
GO
CREATE USER [OLTHOF\Purchasing Reports] FOR LOGIN [OLTHOF\Purchasing Reports]
GO
