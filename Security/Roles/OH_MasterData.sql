CREATE ROLE [OH_MasterData]
AUTHORIZATION [dbo]
EXEC sp_addrolemember N'OH_MasterData', N'OLTHOF\Accounting'

GO
ALTER ROLE [OH_MasterData] ADD MEMBER [OLTHOF\Executive Reports]
GO
ALTER ROLE [OH_MasterData] ADD MEMBER [OLTHOF\Finance Reports]
GO
ALTER ROLE [OH_MasterData] ADD MEMBER [OLTHOF\Gross Profit Margin Reports]
GO
ALTER ROLE [OH_MasterData] ADD MEMBER [OLTHOF\Land Development Reports]
GO
ALTER ROLE [OH_MasterData] ADD MEMBER [OLTHOF\Management Reports]
GO
ALTER ROLE [OH_MasterData] ADD MEMBER [OLTHOF\Production Management Reports]
GO
ALTER ROLE [OH_MasterData] ADD MEMBER [OLTHOF\Production Reports]
GO
ALTER ROLE [OH_MasterData] ADD MEMBER [OLTHOF\Purchasing Reports]
GO
