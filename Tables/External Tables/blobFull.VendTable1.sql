CREATE EXTERNAL TABLE [blobFull].[VendTable]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[TaxWithholdGroup] [varchar] (10) NULL,
[ResidenceForeignCountryRegionId] [varchar] (10) NULL,
[PaymTermId] [varchar] (100) NULL,
[LineDisc] [varchar] (10) NULL,
[AccountNum] [varchar] (20) NULL,
[BankAccount] [varchar] (10) NULL,
[BankCentralBankPurposeCode] [varchar] (10) NULL,
[BankCentralBankPurposeText] [varchar] (210) NULL,
[BankCentralBankTransTypeCur_RU] [varchar] (10) NULL,
[BankOrderOfPayment_RU] [varchar] (2) NULL,
[BidOnly] [varchar] (51) NULL,
[BirthCountyCode_IT] [varchar] (2) NULL,
[BirthPlace] [varchar] (120) NULL,
[Blocked] [varchar] (51) NULL,
[BlockedReleaseDate] [varchar] (51) NULL,
[BLOCKEDRELEASEDATETZID] [int] NULL,
[CashDisc] [varchar] (10) NULL,
[CCMNum_BR] [varchar] (20) NULL,
[ChangeRequestAllowOverride] [varchar] (51) NULL,
[ChangeRequestEnabled] [varchar] (51) NULL,
[ChangeRequestOverride] [varchar] (51) NULL,
[CISCompanyRegNum] [varchar] (8) NULL,
[CISNationalInsuranceNum] [varchar] (9) NULL,
[CISStatus] [varchar] (51) NULL,
[CISUniqueTaxPayerRef] [varchar] (10) NULL,
[CISVerificationDate] [varchar] (40) NULL,
[CISVerificationNum] [varchar] (13) NULL,
[ClearingPeriod] [varchar] (100) NULL,
[CNAE_BR] [varchar] (10) NULL,
[CNPJCPFNum_BR] [varchar] (20) NULL,
[COMMERCIALREGISTER] [varchar] (251) NULL,
[COMMERCIALREGISTERINSETNUMBER] [varchar] (251) NULL,
[COMMERCIALREGISTERSECTION] [varchar] (251) NULL,
[CompanyChainId] [varchar] (20) NULL,
[CompanyIdSiret] [varchar] (14) NULL,
[CompanyNAFCode] [bigint] NULL,
[CompanyType_MX] [varchar] (51) NULL,
[ConsDay_JP] [varchar] (51) NULL,
[ContactPersonId] [varchar] (20) NULL,
[CreditMax] [varchar] (51) NULL,
[CreditRating] [varchar] (10) NULL,
[Curp_MX] [varchar] (18) NULL,
[Currency] [varchar] (3) NULL,
[DBA] [varchar] (120) NULL,
[DefaultDimension] [varchar] (51) NULL,
[DefaultInventStatusId] [varchar] (10) NULL,
[DestinationCodeId] [varchar] (10) NULL,
[DiotCountryCode_MX] [varchar] (10) NULL,
[DisabledOwned] [varchar] (51) NULL,
[DlvMode] [varchar] (10) NULL,
[DlvTerm] [varchar] (10) NULL,
[EndDisc] [varchar] (10) NULL,
[EthnicOriginId] [varchar] (15) NULL,
[FactoringAccount] [varchar] (20) NULL,
[FATCAFilingRequirement] [varchar] (51) NULL,
[FemaleOwned] [varchar] (51) NULL,
[FineCode_BR] [varchar] (10) NULL,
[FiscalCode] [varchar] (16) NULL,
[ForeignEntityIndicator] [varchar] (51) NULL,
[ForeignerId_BR] [varchar] (20) NULL,
[ForeignResident_RU] [varchar] (51) NULL,
[ForeignTaxRegistration_MX] [varchar] (40) NULL,
[FreightZone] [varchar] (10) NULL,
[Heir_IT] [varchar] (51) NULL,
[HUBZone] [varchar] (51) NULL,
[ICMSContributor_BR] [varchar] (51) NULL,
[IENum_BR] [varchar] (20) NULL,
[InclTax] [varchar] (51) NULL,
[INSSCEI_BR] [varchar] (15) NULL,
[IntBank_LV] [varchar] (10) NULL,
[InterestCode_BR] [varchar] (10) NULL,
[InventLocation] [varchar] (10) NULL,
[InventProfileId_RU] [varchar] (10) NULL,
[InventProfileType_RU] [varchar] (51) NULL,
[InventSiteId] [varchar] (10) NULL,
[InvoiceAccount] [varchar] (20) NULL,
[IsPaymFeeCovered_JP] [varchar] (51) NULL,
[IsResident_LV] [varchar] (51) NULL,
[ItemBuyerGroupId] [varchar] (10) NULL,
[LineOfBusinessId] [varchar] (10) NULL,
[LocallyOwned] [varchar] (51) NULL,
[LvPaymTransCodes] [bigint] NULL,
[MainContactWorker] [bigint] NULL,
[MandatoryVatDate_PL] [varchar] (51) NULL,
[MarkupGroup] [varchar] (10) NULL,
[MatchingPolicy] [varchar] (51) NULL,
[MinorityOwned] [varchar] (51) NULL,
[MultiLineDisc] [varchar] (10) NULL,
[NameControl] [varchar] (4) NULL,
[Nationality_MX] [varchar] (50) NULL,
[NIT_BR] [varchar] (14) NULL,
[NonTaxable_BR] [varchar] (51) NULL,
[numberSequenceGroup] [varchar] (10) NULL,
[OffsetAccountType] [varchar] (51) NULL,
[OffsetLedgerDimension] [varchar] (51) NULL,
[OneTimeVendor] [varchar] (51) NULL,
[OperationType_MX] [varchar] (51) NULL,
[OrganizationNumber] [varchar] (20) NULL,
[OrgId] [varchar] (10) NULL,
[Party] [bigint] NULL,
[PaymDayId] [varchar] (10) NULL,
[PaymId] [varchar] (200) NULL,
[PaymMode] [varchar] (10) NULL,
[PaymSched] [varchar] (30) NULL,
[PaymSpec] [varchar] (10) NULL,
[PresenceType_BR] [varchar] (51) NULL,
[PriceGroup] [varchar] (10) NULL,
[PurchAmountPurchaseOrder] [varchar] (51) NULL,
[PurchCalendarId] [varchar] (10) NULL,
[PurchPoolId] [varchar] (10) NULL,
[Rfc_MX] [varchar] (13) NULL,
[SecondTIN] [varchar] (51) NULL,
[SegmentId] [varchar] (20) NULL,
[SeparateDivisionId_RU] [varchar] (20) NULL,
[ServiceCodeOnDlvAddress_BR] [varchar] (51) NULL,
[SmallBusiness] [varchar] (51) NULL,
[StateInscription_MX] [varchar] (30) NULL,
[StructDepartment_RU] [varchar] (30) NULL,
[SubsegmentId] [varchar] (20) NULL,
[SuppItemGroupId] [varchar] (10) NULL,
[TAMRebateGroupID] [varchar] (20) NULL,
[Tax1099Fields] [bigint] NULL,
[Tax1099NameChoice] [varchar] (51) NULL,
[Tax1099RegNum] [varchar] (11) NULL,
[Tax1099Reports] [varchar] (51) NULL,
[TaxGroup] [varchar] (10) NULL,
[TaxIDType] [varchar] (51) NULL,
[TaxPeriodPaymentCode_PL] [varchar] (10) NULL,
[TaxWithholdCalculate] [varchar] (51) NULL,
[TaxWithholdVendorType_TH] [varchar] (51) NULL,
[UnitedVATInvoice_LT] [varchar] (51) NULL,
[UseCashDisc] [varchar] (51) NULL,
[VATNum] [varchar] (20) NULL,
[VATOperationCode_RU] [varchar] (10) NULL,
[VATPartnerKind_RU] [varchar] (51) NULL,
[VATTaxAgent_RU] [varchar] (51) NULL,
[VendConsumption_BR] [varchar] (51) NULL,
[VendExceptionGroup] [bigint] NULL,
[VendGroup] [varchar] (10) NULL,
[VendIncomeCode_BR] [varchar] (10) NULL,
[VendInvoiceDeclaration_IS] [bigint] NULL,
[VendItemGroupId] [varchar] (10) NULL,
[VENDORPORTALADMINISTRATORRECID] [bigint] NULL,
[VendorType_MX] [varchar] (51) NULL,
[VendPaymFeeGroup_JP] [varchar] (20) NULL,
[VendPriceToleranceGroupId] [varchar] (10) NULL,
[VeteranOwned] [varchar] (51) NULL,
[W9] [varchar] (51) NULL,
[W9Included] [varchar] (51) NULL,
[YourAccountNum] [varchar] (20) NULL,
[VendVendorCollaborationType] [varchar] (51) NULL,
[LegalRepresentativeCurp_MX] [varchar] (18) NULL,
[LegalRepresentativeName_MX] [varchar] (50) NULL,
[LegalRepresentativeRfc_MX] [varchar] (13) NULL,
[WithholdingTaxpayerType_MX] [varchar] (51) NULL,
[WithholdingTypeCode_MX] [varchar] (5) NULL,
[OriginalVendorInReporting_IT] [varchar] (51) NULL,
[IsSelfInvoiceVendor_IT] [varchar] (51) NULL,
[WorkflowState] [varchar] (51) NULL,
[IsCPRB_BR] [varchar] (51) NULL,
[DataAreaId] [varchar] (4) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[MODIFIEDDATETIME] [varchar] (40) NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[CREATEDDATETIME] [varchar] (40) NULL,
[CREATEDBY] [varchar] (20) NULL,
[SAB_CONSUSEVENDPORTAL] [int] NULL,
[SAB_ConsDirectLienWaiverRequireSMSAuth] [varchar] (51) NULL,
[SAB_ConsDirectLienWaiverUseDocuSign] [varchar] (51) NULL,
[SAB_ConsDirectLienWaiverVendType] [varchar] (51) NULL,
[CXMLOrderEnable] [varchar] (51) NULL,
[FreeNotesGroup_IT] [varchar] (10) NULL,
[SAB_ConsDirectLienWaiverRequireRecipientSpecification] [varchar] (51) NULL,
[RevenueTypology_IT] [varchar] (51) NULL,
[CodeRevenueTypology_IT] [varchar] (10) NULL,
[SAB_ConsLandDeveloper] [varchar] (51) NULL,
[ITMFromPort] [varchar] (30) NULL,
[ITMOverUnderToleranceGroupId] [varchar] (10) NULL,
[ITMImportCostingVendor] [varchar] (51) NULL,
[ITMAgent] [varchar] (20) NULL,
[ITMServicesProvider] [varchar] (51) NULL,
[ITMVendAccount] [varchar] (20) NULL,
[ITMCostTypeGroupId] [varchar] (30) NULL,
[ITMVendType] [varchar] (51) NULL,
[IsPublicSector_IT] [varchar] (51) NULL,
[VATNumRecId] [bigint] NULL,
[VATNumTableType] [varchar] (51) NULL,
[IsTaxationOverPayroll_BR] [varchar] (51) NULL,
[EInvoiceRegister_IT] [varchar] (51) NULL,
[OverrideSalesTax] [varchar] (51) NULL,
[GUPDiscountVendorClaimGroupName] [varchar] (120) NULL
)
WITH
(
LOCATION = N'Tables/SupplyChain/Vendor/Main/VendTable/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
