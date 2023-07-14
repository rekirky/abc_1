CREATE EXTERNAL TABLE [blobFull].[DirPartyTable]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[InstanceRelationType] [bigint] NULL,
[KnownAs] [varchar] (100) NULL,
[LanguageId] [varchar] (7) NULL,
[Name] [varchar] (100) NULL,
[NameAlias] [varchar] (20) NULL,
[PartyNumber] [varchar] (40) NULL,
[PrimaryAddressLocation] [bigint] NULL,
[PrimaryContactEmail] [bigint] NULL,
[PrimaryContactFax] [bigint] NULL,
[PrimaryContactPhone] [bigint] NULL,
[PrimaryContactTelex] [bigint] NULL,
[PrimaryContactURL] [bigint] NULL,
[PrimaryContactFacebook] [bigint] NULL,
[PrimaryContactTwitter] [bigint] NULL,
[PrimaryContactLinkedIn] [bigint] NULL,
[LegacyInstanceRelationType] [bigint] NULL,
[DUNSNUMBERRECID] [bigint] NULL,
[PHONETICNAME] [varchar] (251) NULL,
[ANNIVERSARYDAY] [int] NULL,
[ANNIVERSARYMONTH] [int] NULL,
[ANNIVERSARYYEAR] [int] NULL,
[BIRTHDAY] [int] NULL,
[BIRTHMONTH] [int] NULL,
[BIRTHYEAR] [int] NULL,
[CHILDRENNAMES] [varchar] (251) NULL,
[COMMUNICATORSIGNIN] [bigint] NULL,
[GENDER] [int] NULL,
[HOBBIES] [varchar] (251) NULL,
[INITIALS] [varchar] (251) NULL,
[MARITALSTATUS] [int] NULL,
[NAMESEQUENCE] [bigint] NULL,
[PERSONALSUFFIX] [bigint] NULL,
[PERSONALTITLE] [bigint] NULL,
[PHONETICFIRSTNAME] [varchar] (251) NULL,
[PHONETICLASTNAME] [varchar] (251) NULL,
[PHONETICMIDDLENAME] [varchar] (251) NULL,
[PROFESSIONALSUFFIX] [varchar] (251) NULL,
[PROFESSIONALTITLE] [varchar] (251) NULL,
[ABC] [int] NULL,
[NUMBEROFEMPLOYEES] [int] NULL,
[ORGNUMBER] [varchar] (251) NULL,
[ORGANIZATIONTYPE] [int] NULL,
[ACCOUNTANT_LT] [varchar] (251) NULL,
[ACCOUNTINGPERSONNEL_JP] [varchar] (251) NULL,
[ACCOUNTOFFICEREFNUM] [varchar] (251) NULL,
[ACTIVITYCODE] [varchar] (251) NULL,
[ADDRFORMAT] [varchar] (251) NULL,
[BRANCHID] [varchar] (251) NULL,
[BUSINESSACTIVITY_SA] [varchar] (251) NULL,
[BUSINESSACTIVITYDESC_SA] [varchar] (251) NULL,
[BUSINESSNUMBER_CA] [varchar] (251) NULL,
[CNAE_BR] [varchar] (251) NULL,
[COMBINEDFEDSTATEFILER] [int] NULL,
[COMPANYREGCOMFR] [varchar] (251) NULL,
[COMPANYREPRESENTATIVE_JP] [varchar] (251) NULL,
[COMPANYTYPE_MX] [int] NULL,
[CONVERSIONDATE] [varchar] (40) NULL,
[COREGNUM] [varchar] (251) NULL,
[CURP_MX] [varchar] (251) NULL,
[DATAAREA] [varchar] (251) NULL,
[DBA] [varchar] (251) NULL,
[DVRID] [varchar] (251) NULL,
[FICREDITORID_DK] [varchar] (251) NULL,
[FILENUMBER_SA] [varchar] (251) NULL,
[FISCALCODE_IT] [varchar] (251) NULL,
[FOREIGNENTITYINDICATOR] [int] NULL,
[GIRO] [varchar] (251) NULL,
[GIROCONTRACT] [varchar] (251) NULL,
[GIROCONTRACTACCOUNT] [varchar] (251) NULL,
[HEAD_LT] [varchar] (251) NULL,
[IMPORTVATNUM] [varchar] (251) NULL,
[IMPORTVATNUMBRANCHID] [varchar] (251) NULL,
[INTRASTATCODE] [varchar] (251) NULL,
[ISCONSOLIDATIONCOMPANY] [int] NULL,
[ISELIMINATIONCOMPANY] [int] NULL,
[ISSUINGSIGNATURE] [varchar] (251) NULL,
[KEY_] [int] NULL,
[LASTFILINGINDICATOR] [int] NULL,
[LEGALFORMFR] [varchar] (251) NULL,
[LEGALNATURE_IT] [int] NULL,
[LEGALREPRESENTATIVECURP_MX] [varchar] (251) NULL,
[LEGALREPRESENTATIVENAME_MX] [varchar] (251) NULL,
[LEGALREPRESENTATIVERFC_MX] [varchar] (251) NULL,
[NAMECONTROL] [varchar] (251) NULL,
[ORGID] [varchar] (251) NULL,
[PAYMROUTINGDNB] [varchar] (251) NULL,
[PAYMTRADERNUMBER] [varchar] (251) NULL,
[PLANNINGCOMPANY] [int] NULL,
[PRINTINNKPPINADDRESS_RU] [int] NULL,
[RALIENCORPCOUNTRY] [varchar] (251) NULL,
[RALIENCORPNAME] [varchar] (251) NULL,
[REGNUM] [varchar] (251) NULL,
[RESIDENT_W] [int] NULL,
[RFC_MX] [varchar] (251) NULL,
[RFULLNAME] [varchar] (251) NULL,
[SIACODE] [varchar] (251) NULL,
[SOFTWAREIDENTIFICATIONCODE_CA] [varchar] (251) NULL,
[STATEINSCRIPTION_MX] [varchar] (251) NULL,
[TAX1099REGNUM] [varchar] (251) NULL,
[TAXREPRESENTATIVE] [varchar] (251) NULL,
[TCC] [varchar] (251) NULL,
[TEMPLATEFOLDER_W] [varchar] (251) NULL,
[UPSNUM] [varchar] (251) NULL,
[VALIDATE1099ONENTRY] [int] NULL,
[VATNUM] [varchar] (251) NULL,
[VATNUMBRANCHID] [varchar] (251) NULL,
[BUSINESSCOMMENCEDDATE_JP] [varchar] (40) NULL,
[BUSINESSINITIALCAPITAL_JP] [decimal] (18, 0) NULL,
[BUSINESSITEM_JP] [varchar] (251) NULL,
[CERTIFIEDTAXACCOUNTANT_JP] [varchar] (251) NULL,
[CUC_IT] [varchar] (251) NULL,
[FSS_RU] [varchar] (251) NULL,
[FSSACCOUNT_RU] [varchar] (251) NULL,
[LEGALREPRESENTATIVE_JP] [varchar] (251) NULL,
[ORGANIZATIONLEGALFORM_RU] [varchar] (251) NULL,
[PERSONINCHARGE_JP] [varchar] (251) NULL,
[PFREGNUM_RU] [varchar] (251) NULL,
[PRINTCORRINVOICELABEL_DE] [int] NULL,
[PRINTCORRINVOICELABELEFFDATE_DE] [varchar] (40) NULL,
[PRINTENTERPRISEREGISTER_NO] [int] NULL,
[SUBORDINATECODE] [varchar] (251) NULL,
[LOCALIZATIONCOUNTRYREGIONCODE] [int] NULL,
[TAXGSTHSTACCOUNTID_CA] [varchar] (251) NULL,
[DASHBOARDIMAGETYPE] [int] NULL,
[NAICS] [varchar] (251) NULL,
[BANK] [varchar] (251) NULL,
[BANKACCTUSEDFOR1099] [varchar] (251) NULL,
[BANKCENTRALBANKPURPOSETEXT] [varchar] (251) NULL,
[BANKCENTRALBANKPURPOSECODE] [varchar] (251) NULL,
[COMPANYNAFCODE] [bigint] NULL,
[PAYMINSTRUCTION1] [bigint] NULL,
[PAYMINSTRUCTION2] [bigint] NULL,
[PAYMINSTRUCTION3] [bigint] NULL,
[PAYMINSTRUCTION4] [bigint] NULL,
[SHIPPINGCALENDARID] [varchar] (251) NULL,
[TAXAUTHORITY_RU] [varchar] (251) NULL,
[PACKMATERIALFEELICENSENUM] [varchar] (251) NULL,
[COMPANYINITIALCAPITAL_FR] [decimal] (18, 0) NULL,
[EEENABLEPERSONALDATAREADLOG] [int] NULL,
[EEENABLEROLECHANGELOG] [int] NULL,
[TAXREGIMECODE_MX] [varchar] (251) NULL,
[PROFITMARGINSCHEME_AE] [int] NULL,
[VATREFUND_AE] [int] NULL,
[VATONCUSTOMERBEHALF_AE] [int] NULL,
[TAXABLEPERSONNAME_AE] [bigint] NULL,
[DECLARANTNAME_AE] [bigint] NULL,
[TAXABLEAGENTNAME_AE] [bigint] NULL,
[TAXABLEAGENCYNAME_AE] [bigint] NULL,
[OMOPERATINGUNITNUMBER] [varchar] (251) NULL,
[OMOPERATINGUNITTYPE] [int] NULL,
[HCMWORKER] [bigint] NULL,
[DESCRIPTION] [varchar] (120) NULL,
[ISACTIVE] [int] NULL,
[TEAMADMINISTRATOR] [varchar] (251) NULL,
[TEAMMEMBERSHIPCRITERION] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[MODIFIEDDATETIME] [varchar] (40) NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[CREATEDDATETIME] [varchar] (40) NULL,
[CREATEDBY] [varchar] (20) NULL,
[RELATIONTYPE] [bigint] NULL,
[AddressBookNames] [varchar] (1000) NULL,
[OH_ProcurementEmailsEnabled] [varchar] (51) NULL,
[OH_CustomerServiceEmailsEnabled] [varchar] (51) NULL,
[OH_LandDevEmailsEnabled] [varchar] (51) NULL,
[OH_ConsWBSActivityNotificationScheduleType] [varchar] (51) NULL
)
WITH
(
LOCATION = N'Tables/Common/GAB/Main/DirPartyTable/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
