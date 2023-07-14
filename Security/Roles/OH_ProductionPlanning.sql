CREATE ROLE [OH_ProductionPlanning]
AUTHORIZATION [dbo]
GO
ALTER ROLE [OH_ProductionPlanning] ADD MEMBER [OLTHOF\Production Management Reports]
GO
ALTER ROLE [OH_ProductionPlanning] ADD MEMBER [OLTHOF\Production Reports]
GO
