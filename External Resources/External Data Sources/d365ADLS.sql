CREATE EXTERNAL DATA SOURCE [d365ADLS] WITH
(
LOCATION = N'adls://dynamics365-financeandoperations@ohdatalakecentralprod.dfs.core.windows.net/olthofhomes.operations.dynamics.com/',
CREDENTIAL = [DataLakeSAS_ReadOnly]
)
GO
