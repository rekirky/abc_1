CREATE ROLE [OH_BasicReadOnly]
AUTHORIZATION [dbo]
GO
ALTER ROLE [OH_BasicReadOnly] ADD MEMBER [OLTHOF\Accounting]
GO
ALTER ROLE [OH_BasicReadOnly] ADD MEMBER [OLTHOF\Executive Reports]
GO
ALTER ROLE [OH_BasicReadOnly] ADD MEMBER [OLTHOF\Finance Reports]
GO
ALTER ROLE [OH_BasicReadOnly] ADD MEMBER [OLTHOF\Gross Profit Margin Reports]
GO
ALTER ROLE [OH_BasicReadOnly] ADD MEMBER [OLTHOF\Land Development Reports]
GO
ALTER ROLE [OH_BasicReadOnly] ADD MEMBER [OLTHOF\Management Reports]
GO
ALTER ROLE [OH_BasicReadOnly] ADD MEMBER [OLTHOF\Production Management Reports]
GO
ALTER ROLE [OH_BasicReadOnly] ADD MEMBER [OLTHOF\Production Reports]
GO
ALTER ROLE [OH_BasicReadOnly] ADD MEMBER [OLTHOF\Purchasing Reports]
GO
