IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'OLTHOF\Gross Profit Margin Reports')
CREATE LOGIN [OLTHOF\Gross Profit Margin Reports] FROM WINDOWS
GO
CREATE USER [OLTHOF\Gross Profit Margin Reports] FOR LOGIN [OLTHOF\Gross Profit Margin Reports]
GO
