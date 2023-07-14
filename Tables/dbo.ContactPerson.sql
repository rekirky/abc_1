CREATE TABLE [dbo].[ContactPerson]
(
[AssistantName] [varchar] (120) NULL,
[AssistantPhone] [varchar] (20) NULL,
[BillingInformation] [varchar] (150) NULL,
[Character] [varchar] (20) NULL,
[ComputerNetworkName] [varchar] (10) NULL,
[ContactForParty] [bigint] NULL,
[ContactPersonId] [varchar] (20) NULL,
[ContactPersonParentId] [varchar] (20) NULL,
[CREATEDBY] [varchar] (20) NULL,
[CREATEDDATETIME] [date] NULL,
[CustAccount] [varchar] (20) NULL,
[DataAreaId] [varchar] (4) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Decision] [varchar] (20) NULL,
[Department] [varchar] (50) NULL,
[DirectMail] [varchar] (51) NULL,
[DocuGreeting1] [varchar] (255) NULL,
[DocuGreeting2] [varchar] (255) NULL,
[DocuIntro1] [varchar] (25) NULL,
[DocuIntro2] [varchar] (25) NULL,
[FUNCTION_] [varchar] (251) NULL,
[GovernmentIDNumber] [varchar] (50) NULL,
[Imported] [varchar] (51) NULL,
[Inactive] [varchar] (51) NULL,
[IsContactPersonExternallyMaintained] [varchar] (51) NULL,
[LastEditAxDateTime] [date] NULL,
[LASTEDITAXDATETIMETZID] [int] NULL,
[Loyalty] [varchar] (20) NULL,
[MainResponsibleWorker] [bigint] NULL,
[MCRIsDefaultContact] [varchar] (3) NULL,
[MCRIsDefaultContactFlag] [bit] NULL,
[Mileage] [varchar] (199) NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[MODIFIEDDATETIME] [date] NULL,
[OfficeLocation] [varchar] (30) NULL,
[OrganizationalIDNumber] [varchar] (25) NULL,
[OutlookCategories] [varchar] (255) NULL,
[PARTITION] [bigint] NULL,
[Party] [bigint] NULL,
[PayeeDocument_RU] [varchar] (100) NULL,
[Profession] [varchar] (30) NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[Sensitivity] [varchar] (256) NULL,
[SensitivityEnumID] [varchar] (51) NULL,
[Spouse] [varchar] (120) NULL,
[TimeAvailableFrom] [varchar] (51) NULL,
[TimeAvailableTo] [varchar] (51) NULL,
[Title] [varchar] (30) NULL,
[VendorPortalAccessAllowed] [varchar] (51) NULL,
[VendRole] [varchar] (256) NULL,
[VendRoleEnumID] [varchar] (51) NULL,
[VIP] [varchar] (51) NULL,
[WebRequestAccess] [varchar] (51) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ContactPerson] ADD CONSTRAINT [PK_ContactPerson_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_dbo_NC_ContactPerson] ON [dbo].[ContactPerson] ([Party]) ON [PRIMARY]
GO