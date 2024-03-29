create   view [blobTransFull].[ContactPerson] as select 
LSN,[AssistantName]
,[AssistantPhone]
,[BillingInformation]
,[Character]
,[ComputerNetworkName]
,[ContactForParty]
,[ContactPersonId]
,[ContactPersonParentId]
,[CREATEDBY]
,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
,[CustAccount]
,[DataAreaId]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Decision]
,[Department]
,[DirectMail]
,[DocuGreeting1]
,[DocuGreeting2]
,[DocuIntro1]
,[DocuIntro2]
,[FUNCTION_]
,[GovernmentIDNumber]
,[Imported]
,[Inactive]
,[IsContactPersonExternallyMaintained]
,[LastEditAxDateTime]=cast([LastEditAxDateTime] as date)
,[LASTEDITAXDATETIMETZID]
,[Loyalty]
,[MainResponsibleWorker]
,[MCRIsDefaultContact]=case when [MCRIsDefaultContact]=1 then 'Yes' else 'No' end ,MCRIsDefaultContactFlag=cast([MCRIsDefaultContact] as bit)
,[Mileage]
,[MODIFIEDBY]
,[MODIFIEDDATETIME]=cast([MODIFIEDDATETIME] as date)
,[OfficeLocation]
,[OrganizationalIDNumber]
,[OutlookCategories]
,[PARTITION]
,[Party]
,[PayeeDocument_RU]
,[Profession]
,[RECID]
,[RECVERSION]
,[Sensitivity]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='smmSensitivity' and e.EnumCode=t.[Sensitivity]) ,SensitivityEnumID=[Sensitivity]
,[Spouse]
,[TimeAvailableFrom]
,[TimeAvailableTo]
,[Title]
,[VendorPortalAccessAllowed]
,[VendRole]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='VendRequestRoleType' and e.EnumCode=t.[VendRole]) ,VendRoleEnumID=[VendRole]
,[VIP]
,[WebRequestAccess]
 from blobFull.ContactPerson t
GO
