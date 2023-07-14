IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'OLTHOF\Accounting')
CREATE LOGIN [OLTHOF\Accounting] FROM WINDOWS
GO
CREATE USER [OLTHOF\Accounting] FOR LOGIN [OLTHOF\Accounting]
GO
