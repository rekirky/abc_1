
create   VIEW [dbo].[DimensionSetEntity] AS 
SELECT 
	RECID AS RECORDID
	, MAINACCOUNTVALUE AS MAINACCOUNT
	--, MODIFIEDDATETIME 
	--, MODIFIEDBY 
	--, CREATEDDATETIME 
	--, CREATEDBY 
	--, RECVERSION
	, PARTITION 
	, RECID 
	,RecVersion
	,DisplayValue=concat(mainAccountValue,'-',legalentityValue,'-',bankValue,'-',divisionValue,'-',countyValue,'-',communityOrLandPropertyValue,'-',productTypeValue,'-',SeriesValue)

FROM dbo.DIMENSIONATTRIBUTEVALUESET
GO
