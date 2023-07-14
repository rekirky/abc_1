CREATE EXTERNAL DATA SOURCE [d365JSON] WITH
(
LOCATION = N'https://ohdatalakecentralprod.blob.core.windows.net/dynamics365-financeandoperations',
CREDENTIAL = [DataLakeSAS_ReadOnly],
TYPE = BLOB_STORAGE
)
GO
