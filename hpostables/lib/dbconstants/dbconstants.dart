import 'package:sqflite/sqflite.dart';

class DbConstant {
  DbConstant.getInstance();

  static final _instance = DbConstant.getInstance();

  factory DbConstant() {
    return _instance;
  }

  //Addons Table
  static final tableName = "addons";
  static final columnId = "id";
  static final columnCreatedAt = "created_at";
  static final columnUpdatedAt = "updated_at";
  static final columnParentItem = "parent_item_no";
  static final columnLineNo = "line_no";
  static final columnType = "type";
  static final columnNo = "no";
  static final columnAssembly = "assembly_bom";
  static final columnDescription = "description";
  static final columnUnitofMeasure = "unit_of_measure_code";
  static final columnQuantityPer = "quantity_per";
  static final columnBomDescription = "bom_description";
  static final columnResourceUsage = "resource_usage_type";
  static final columnBomRecipeversion = "bom_recipe_version_code";
  static final columnBomComponentType = "bom_component_type";
  static final columnRecipeVersioncode = "recipe_version_code";
  static final columnWastage = "wastage_";
  static final columnGrossWeigth = "gross_weight";
  static final columnNetWeight = "net_weight";
  static final columnCost = "cost";
  static final columnExcludefromMenu = "exclude_from_menu_requisition";
  static final columnExcludefromPortionWeight = "excluded_from_portion_weight";
  static final columnUnaffy = "unaff_by_multipl_factor";
  static final columnItemNo = "item_no";
  static final columnQtyPerRecipe = "qty_per_recipe_noof_portions";
  static final columnExclusion = "exclusion";
  static final columnPriceOnExclusion = "price_on_exclusion";
  static final columnCategory = "Category";

//  Addon items table

  static final AddonitemTable = "add_on_items";
  static final columncreatedAt = "created_at";
  static final columnUPDATEDat = "updated_at";
  static final columnAddonItemId = "add_on_items_id";
  static final columnCompanyCode = "company_code";
  static final columnMainitemNo = "main_item_no";
  static final columnSubItemNo = "sub_item_no";
  static final columnAdditionalPrice = "additional_price";
  static final columnAdditionalPriceIncluVat = "additional_price_incl_vat";
  static final columnUom = "uom";
  static final column_Id = "id";

//  BackOffice table

  static final BackOfficeTable = "backofficetables";
  static final backOfficeCreatedAt = "created_at";
  static final backOfficeUpdatedAt = "updated_at";
  static final backOfficeTableName = "table_name";
  static final backOfficeRole = "role";
  static final backofficeActive = "is_active";
  static final backofficeID = "id";

//bill_of_materials table

  static final billOfMaterialTableName = "bill_of_materials";
  static final billCreatedAT = "created_at";
  static final billUpdatedAT = "updated_at";
  static final billBomID = "bom_id";
  static final billcomnapyCode = "company_code";
  static final billMainitem = "main_item_no";
  static final billSubitem = "sub_item_no";
  static final billUom = "uom";
  static final billQuantityper = "quantity_per";
  static final billStatus = "status";
  static final billCreatedBy = "created_by";
  static final billcreatedDATE = "created_date";
  static final billupadeby = "updated_by";
  static final billupdatedate = "updated_date";
  static final billispotional = "isoptional";
  static final billID = "id";

//branch table

  static final BranchTableName = "branch";
  static final branchcratedat = "created_at";
  static final branchupdatedat = "updated_at";
  static final branchlableid = "lable_id";
  static final brandchshiftID = "shift_id";
  static final branchId = "id";

//  city master table
  static final CitymasteraTable = "city_master";
  static final citymasterCreatedat = "created_at";
  static final citymasterupdatedat = "updated_at";
  static final city_mastername = "name";
  static final cityState_id = "state_id";
  static final cityStatecode = "state_code";
  static final cityStatename = "state_name";
  static final cityCountryId = "country_id";
  static final cityCountrycode = "country_code";
  static final cityCountryName = "country_name";
  static final cityLatitude = "latitude";
  static final cityLongitude = "longitude";
  static final citywikidataid = "wikiDataId";
  static final cityId = "id";

//  Costing Methods table

  static final CostingMethodTable = "costing_methods";
  static final costingCreatedat = "created_at";
  static final costingUpdatedat = "updated_at";
  static final costinglable = "costing_label";
  static final costingcode = "costing_code";
  static final costingExtra = "extra";
  static final costingIsACTIVE = "is_active";
  static final costingId = "id";

//  Country Master

  static final CountryTableName = "country_master";
  static final countryCreatedAt = "created_at";
  static final countryupdatedAt = "updated_at";
  static final countryName = "name";
  static final countryIso3 = "iso3";
  static final countryIso2 = "iso2";
  static final countryNumericcode = "numeric_code";
  static final countryphonecode = "phone_code";
  static final countryCapital = "capital";
  static final countryCurrency = "currency";
  static final countryCurrencyName = "currency_name";
  static final country = "currency_symbol";
  static final countrytld = "tld";
  static final countrynative = "native";
  static final countryregion = "region";
  static final countrysubregion = "subregion";
  static final countrylatitude = "latitude";
  static final countrylongitude = "longitude";
  static final countryemoji = "emoji";
  static final countryemojiU = "emojiU";
  static final countryid = "id";

//Coupon entries table

  static final CouponEntiresTable = "coupon_entries";
  static final couponCreatdat = "created_at";
  static final couponUpdatedAt = "updated_at";
  static final couponStoreno = "store_no";
  static final couponPosterminal = "pos_terminal_no";
  static final couponTranc = "transaction_no";
  static final couponCode = "coupon_code";
  static final couponLN = "line_no";
  static final couponCRN = "coupon_reference_no";
  static final couponNo = "coupon_no";
  static final couponBarcode = "barcode";
  static final couponIssuedStore = "issued_by_store";
  static final coupissued_by_pos_terminal = "issued_by_pos_terminal";
  static final couponIssuedate = "issue_date";
  static final couponIssuebyUSER = "issued_by_user";
  static final couponresrvedPosterminal = "reserved_by_pos_terminal_no";
  static final couponreservedonPos = "date_reserved_on_pos";
  static final couponFVD = "first_valid_date";
  static final couponLVD = "last_valid_date";
  static final couponStatus = "status";
  static final couponSn = "sequence_no";
  static final couponCBN = "closed_by_store";
  static final couponCBT = "closed_by_terminal";
  static final couponCD = "closed_date";
  static final couponCBU = "closed_by_user";
  static final couponCBNN = "closed_by_entry_no";
  static final couponDtype = "discount_type";
  static final couponV = "value";
  static final couponVT = "value_type";
  static final couponGS = "g_l_status";
  static final couponGA = "g_l_amount";
  static final couponCF = "coupon_function";
  static final couponFLE = "fbp_ledger_entry_no";
  static final couponMA = "member_account_no";
  static final couponID = "id";

//  Coupon Headers
  static final CouponHeaderTable = "coupon_headers";
  static final couponheaderCreatedAT = "created_at";
  static final couponheaderUpdatedAt = "updated_at";
  static final couponheaderCode = "code";
  static final couponheaderCouponIssuer = "coupon_issuer";
  static final couponheaderCouponReferenceNo = "coupon_reference_no";
  static final couponheaderDescription = "description";
  static final couponheaderDescription2 = "description_2";
  static final couponheaderPriceGroup = "price_group";
  static final couponheaderDiscountType = "discount_type";
  static final couponheaderValidationPeriodId = "validation_period_id";
  static final couponheaderStatus = "status";
  static final couponheaderType = "type";
  static final couponheaderHandling = "handling";
  static final couponheaderNoOfItemsToTrigger = "no_of_items_to_trigger";
  static final couponheaderApplyToNoOfItems = "apply_to_no_of_items";
  static final couponheaderAffects = "affects";
  static final couponheaderNoSeries = "no_series";
  static final couponheaderMultiplyValue = "multiply_value";
  static final couponheaderMultiplyValuePeriodId = "multiply_value_period_id";
  static final couponheaderIssueAtPos = "issue_at_pos";
  static final couponheaderLoyaltyScheme = "loyalty_scheme";
  static final couponheaderDiscountOfTotal = "discount__of_total";
  static final couponheaderRoundingMethod = "rounding_method";
  static final couponheaderExtraPrintSetup = "extra_print_setup";
  static final couponheaderBarcodeMask = "barcode_mask";
  static final couponheaderMemberType = "member_type";
  static final couponheaderMemberValue = "member_value";
  static final couponheaderFirstValidDateFormula = "first_valid_date_formula";
  static final couponheaderLastValidDateFormula = "last_valid_date_formula";
  static final couponheaderBarcodeElement1 = "barcode_element_1";
  static final couponheaderBarcodeElement2 = "barcode_element_2";
  static final couponheaderBarcodeElement3 = "barcode_element_3";
  static final couponheaderBarcodeElement4 = "barcode_element_4";
  static final couponheaderBarcodeElement5 = "barcode_element_5";
  static final couponheaderBarcodeElement6 = "barcode_element_6";
  static final couponheaderBarcodeElement7 = "barcode_element_7";
  static final couponheaderBarcodeElement8 = "barcode_element_8";
  static final couponheaderCalculationType = "calculation_type";
  static final couponheaderValue = "value";
  static final couponheaderEntryValidation = "entry_validation";
  static final couponheaderPostingType = "posting_type";
  static final couponheaderPostingAccount = "posting_account";
  static final couponheaderBuyerId = "buyer_id";
  static final couponheaderBuyerGroupCode = "buyer_group_code";
  static final couponheaderOfflineProcess = "offline_process";
  static final couponheaderCouponIdMethod = "coupon_id_method";
  static final couponheaderMaxPerMember = "max_per_member";
  static final couponheaderMinimumTransAmount = "minimum_trans_amount";
  static final couponheaderMaximumTransAmount = "maximum_trans_amount";
  static final couponheaderID = "id";

  //Currency Master table
  static final CurrencyMasterTable = "currency_masters";
  static final currencyCreadtedT = "created_at";
  static final currencyUPDATEAT = "updated_at";
  static final currencyCC = "currency_code";
  static final currencyCN = "currency_name";
  static final currencyID = "id";

//  Customers table

  static final CustomersTable = "customers";
  static final customersTable = "customers";
  static final customersCreatedat = "created_at";
  static final customersUpdatedat = "updated_at";
  static final customersCustomerId = "customer_id";
  static final customersCompanyCode = "company_code";
  static final customersNo = "no";
  static final customersFirstName = "first_name";
  static final customersLastName = "last_name";
  static final customersSalutation = "salutation";
  static final customersNationality = "nationality";
  static final customersCountryCode = "country_code";
  static final customersCreditCustomer = "credit_customer";
  static final customersVatRegistrationNo = "vat_registration_no";
  static final customersMobileNo = "mobile_no";
  static final customersAltMobileNo = "alt_mobile_no";
  static final customersEmail = "email";
  static final customersStatus = "status";
  static final customersCreatedBy = "created_by";
  static final customersCreatedDate = "created_date";
  static final customersUpdatedBy = "updated_by";
  static final customersUpdatedDate = "updated_date";
  static final customersId = "id";

//  Dealers Table

  static final DealHeadersTable = "deal_headers";
  static final dealheadersCA = "created_at";
  static final dealheadersUA = "updated_at";
  static final dealheadersDC = "deal_code";
  static final dealheadersSDL = "show_deal_lines";
  static final dealheadersPG = "price_group";
  static final dealheadersVP = "validity_period";
  static final dealheadersS = "status";
  static final dealheadersDP = "deal_price";
  static final dealheadersID = "id";

//  Deal items Table
  static final DealItemsTable = "deal_items";
  static final dealCA = "created_at";
  static final dealUA = "updated_at";
  static final dealId = "id";

//Deal trn link with prod ids table
  static final DealTRNlinkTable = "deal_trn_link_with_prod_ids";
  static final dealtrnCA = "created_at";
  static final dealtrnUA = "updated_at";
  static final dealtrnLink = "trn_link";
  static final dealdealink = "deal_link";
  static final dealid = "id";

// Discount types table

  static final DiscountTypesTable = "discounttypes";
  static final discountCA = "created_at";
  static final discountUA = "updated_at";
  static final discountL = "label";
  static final discountTYPE = "type";
  static final discountLID = "label_id";
  static final discountD = "description";
  static final discountID = "id";

//  Division Masters

  static final DivisionMastersTable = "division_masters";
  static final divisionCA = "created_at";
  static final divisionUA = "updated_at";
  static final divisionL = "division_label";
  static final divisionC = "division_code";
  static final divisionEX = "extra";
  static final divisionIA = "is_active";
  static final divisionID = "id";

//Failed jobs table

  static final FailedJobstable = "failed_jobs";
  static final failedjobsUUID = "uuid";
  static final failedjobsC = "connection";
  static final failedjobsQ = "queue";
  static final failedjobsPLYD = "payload";
  static final failedjobsEXP = "exception";
  static final failedjobsFat = "failed_at";
  static final failedjobsid = "id";

//  GUI menuses table

  static final GuiMenusesTable = "gui_menuses";
  static final guimenuesCA = "created_at";
  static final guimenuesUA = "updated_at";
  static final guimenuesGML = "gui_menu_label";
  static final guimenuesGMC = "gui_menu_code";
  static final guimenuesI = "icon";
  static final guimenuesC = "color";
  static final guimenuesBC = "badge_color";
  static final guimenuesPID = "parent_id";
  static final guimenuesIA = "is_active";
  static final guimenuesFID = "form_id";
  static final guimenuesID = "id";

//  Hospitality defaultsetups table

  static final HospitalityDefaultsetuptable = "hospitalitydefaultsetups";
  static final hospitalitydfsCA = "created_at";
  static final hospitalitydfsUA = "updated_at";
  static final hospitalitydfsDFT = "default_hospitality_type";
  static final hospitalitydfsDC = "default_customer";
  static final hospitalitydfsDP = "default_payment";
  static final hospitalitydfsID = "id";

  //Hospitality statues table

  static final HospitalitystatusTable = "hospitalitystatuses";
  static final hospitalitystatusCA = "created_at";
  static final hospitalitystatusUA = "updated_at";
  static final hospitalitystatusC = "code";
  static final hospitalitystatusd = "description";
  static final hospitalitystatusHT = "hospitalitytype";
  static final hospitalitystatusSC = "storecode";
  static final hospitalitystatusID = "id";

//  Hospitalitytypes table

  static final HospitalitytypesTable = "hospitalitytypes";
  static final hospitalitytypesCA = "created_at";
  static final hospitalitytypesUA = "updated_at";
  static final hospitalitytypesC = "code";
  static final hospitalitytypesD = "description";
  static final hospitalitytypesSC = "store_code";
  static final hospitalitytypesLW = "layout_view";
  static final hospitalitytypesID = "id";
  static final hospitalitytypesIS = "is_active";

//  Integration details

  static final IntegrationDetailsTable = "integration_details";
  static final integrationdetailsCA = "created_at";
  static final integrationdetailsUA = "updated_at";
  static final integrationdetailsFFN = "form_field_name";
  static final integrationdetailsFFI = "form_field_id";
  static final integrationdetailsISA = "is_active";
  static final integrationdetailsEFN = "erp_field_name";
  static final integrationdetailsID = "id";

  //IntegrationHeadersTable
  static final IntegrationHeadersTable = "integration_headers";
  static final integrationHeaderCA = "created_at";
  static final integrationHeaderUA = "updated_at";
  static final integrationHeaderURL = "url";
  static final integrationHeaderTN = "table_name";
  static final integrationHeaderTI = "table_id";
  static final integrationHeaderFID = "form_id";
  static final integrationHeaderIA = "is_active";
  static final integrationHeaderUID = "user_id";
  static final integrationHeaderSID = "store_id";
  static final integrationHeaderID = "id";

//Item category Masters

  static final ItemCategoryMastersTable = "item_category_masters";
  static final itemcategorymasterCA = "created_at";
  static final itemcategorymasterUA = "updated_at";
  static final itemcategorymasterICL = "item_category_label";
  static final itemcategorymasterICC = "item_category_code";
  static final itemcategorymasterEXTRA = "extra";
  static final itemcategorymasterIA = "is_active";
  static final itemcategorymasterID = "id";

//  Reciepe Table

  static final ReciepesTable = "recipes";
  static final reciepesCA = "created_at";
  static final reciepesUA = "updated_at";
  static final reciepesPIN = "parent_item_no";
  static final reciepesLN = "line_no";
  static final reciepesT = "type";
  static final reciepesN = "no";
  static final reciepesAB = "assembly_bom";
  static final reciepesD = "description";
  static final reciepesUM = "unit_of_measure_code";
  static final reciepesQP = "quantity_per";
  static final reciepesBD = "bom_description";
  static final reciepesRUT = "resource_usage_type";
  static final reciepesBRV = "bom_recipe_version_code";
  static final reciepesBCT = "bom_component_type";
  static final reciepesRVC = "recipe_version_code";
  static final reciepesW = "wastage_";
  static final reciepesGW = "gross_weight";
  static final reciepesNW = "net_weight";
  static final reciepesC = "cost";
  static final reciepesEFMR = "exclude_from_menu_requisition";
  static final reciepesEFP = "excluded_from_portion_weight";
  static final reciepesUMF = "unaff_by_multipl_factor";
  static final reciepesIN = "item_no";
  static final reciepesQPP = "qty_per_recipe_noof_portions";
  static final reciepesE = "exclusion";
  static final reciepesPIE = "price_on_exclusion";
  static final reciepesID = "id";

  //KDS masters table
  static final KdsMasterstable = "kds_master";
  static final kdsmasterCA = "created_at";
  static final kdsmasterUA = "updated_at";
  static final kdsmasterSID = "store_id";
  static final kdsmasterLID = "kds_id";
  static final kdsmasterIS = "is_active";
  static final kdsmasterId = "id";

//  KDS user links table

  static final KdsUserLinkstable = "kds_user_links";
  static final KdsUserLinkstableCA = "created_at";
  static final KdsUserLinkstableUA = "updated_at";
  static final KdsUserLinkstableSID = "store_id";
  static final KdsUserLinkstableLID = "kds_id";
  static final KdsUserLinkstableIS = "is_active";
  static final KdsUserLinkstableId = "id";

//  Items table

  static final ItemsTable = "items";
  static final itemsCA = "created_at";
  static final itemsUA = "updated_at";
  static final itemsN = "name";
  static final itemsS = "slug";
  static final itemsD = "description";
  static final itemsP = "price";
  static final itemsID = "id";

  //XZreports table

  static final xzreportsTable = "xzreports";
  static final xzreportsstore_id = "store_id";
  static final xzreportsid = "id";
  static final xzreportsuser_type = "user_type";
  static final xzreportscreated_at = "created_at";
  static final xzreportsnupdated_at = "updated_at";
  static final xzreportsuser_id = "user_id";

// languages table

  static final languageTable = "languages";
  static final languageCA = "created_at";
  static final languageUA = "updated_at";
  static final languageLN = "language_name";
  static final languageID = "id";

//  language Lables table

  static final languageLablestable = "languagelabels";
  static final languagelabelCA = "created_at";
  static final languagelabelUA = "updated_at";
  static final languagelabelL = "label";
  static final languagelabellID = "language_id";
  static final languagelabelID = "id";

//  Menu hierarchy section Links

  static final MenuHierarchySectionLinksTable = "menu_hierarchy_section_links";
  static final menuhirarchyslCA = "created_at";
  static final menuhirarchyslUA = "updated_at";
  static final menuhirarchyslMID = "menu_hierarchy_id";
  static final menuhirarchyslSID = "section_id";
  static final menuhirarchyslIA = "is_active";
  static final menuhirarchyslID = "id";

//  Menu hierarchyies table

  static final MenuHierarchiesTable = "menuhierarchies";
  static final menuhierarchiesCA = "created_at";
  static final menuhierarchiesUA = "updated_at";
  static final menuhierarchiesHL = "hierarchy_label";
  static final menuhierarchiesHC = "hierarchy_code";
  static final menuhierarchiesPID = "parent_id";
  static final menuhierarchiesIA = "is_active";
  static final menuhierarchiesID = "id";
  static final menuhierarchiessectioncode = "section_code";
  static final menuhierarchiessectionname = "section_name";

//VAT masters table
  static final vatmasters = "vat_masters";
  static final vatMastersCA = "created_at";
  static final vatMastersUpdateAt = "updated_at";
  static final vatMastersVatCode = "vat_code";
  static final vatMastersVatPercent = "vat_percent";
  static final vat_MastersStartDate = "start_date";
  static final vatMastersEndDate = "end_date";
  static final vatMastersDescription = "description";
  static final vatMastersId = "id";

//  Migrations table

  static final MigrationTable = "migrations";
  static final migrationsM = "migration";
  static final migrationsB = "batch";
  static final migrationsID = "id";

//  Number series table

  static final NumberSeriesTable = "number_series";
  static final numberseriesCA = "created_at";
  static final numberseriesUA = "updated_at";
  static final numberseriesNL = "number_label";
  static final numberseriesNC = "number_code";
  static final numberseriesE = "extra";
  static final numberseriesIA = "is_active";
  static final numberseriesID = "id";

//  offers n discounts table

  static final OffersNdiscountsTable = "offers_n_discounts";
  static final offersNdiscountCA = "created_at";
  static final offersNdiscountUA = "updated_at";
  static final offersNdiscountID = "id";

//  Item modifier details table

  static final ItemsModifierTable = "item_modifier_details";
  static final itemsmodifiersCA = "created_at";
  static final itemsmodifiersUA = "updated_at";
  static final itemsmodifiersID = "id";

//  Item modifier detail table

  static final ItemModifierDetailtable = "item_modifier_detail";
  static final itemmodifierdetailID = "id";
  static final itemmodifierdetailCA = "created_at";
  static final itemmodifierdetailUA = "updated_at";
  static final itemmodifierdetailC = "code";
  static final itemmodifierdetailSC = "sub_code";
  static final itemmodifierdetailTN = "item_no";
  static final itemmodifierdetailD = "description";
  static final itemmodifierdetailD2 = "description_2";
  static final itemmodifierdetailQP = "qty_per_uom";
  static final itemmodifierdetailMAXS = "max_selection";
  static final itemmodifierdetailMS = "min_selection";
  static final itemmodifierdetailPT = "price_type";
  static final itemmodifierdetailPH = "price_handling";
  static final itemmodifierdetailUOM = "uom";
  static final itemmodifierdetailUC = "usage_category";
  static final itemmodifierdetailP = "priority";

//  Sections table
  static final SectionsTable = "sections";
  static final sectionsCA = "created_at";
  static final sectionsUA = "updated_at";
  static final sectionsC = "code";
  static final sectionsD = "description";
  static final sectionsHT = "hospitality_type";
  static final sectionsSC = "store_code";
  static final sectionsID = "id";
  static final sectionsIA = "is_active";

//  Settings table

  static final SettingsTable = "settings";
  static final settingsCA = "created_at";
  static final settingsUA = "updated_at";
  static final settingsU = "user";
  static final settingsSS = "store";
  static final settingsS = "setup";
  static final settingsIA = "is_active";
  static final settingsT = "tenant";
  static final settingsID = "id";

// Shift table

  static final ShiftTable = "shift";
  static final shiftID = "id";
  static final shiftCA = "created_at";
  static final shiftUA = "updated_at";
  static final shiftSID = "shift_id";
  static final shiftLID = "label_id";

  //variants table

  static final variantsTable = "variants";
  static final variantsCA = "created_at";
  static final variantsUpdatedAt = "updated_at";
  static final variantsId = "id";

//variant Table
  static final variantTable = "variant";
  static final variantId = "id";
  static final variantCA = "created_at";
  static final variantUpDateAt = "updated_at";
  static final variantItemNo = "item_no";
  static final variantDescription = "description";
  static final variantDescription2 = "description_2";
  static final variantVCode = "variant_code";
  static final variantSCode = "store_code";
  static final variantLcode = "location_code";
  static final variantIsVariant = "is_variant";
  static final variantIsActive = "is_active";

  //usertablestatuses Table

  static final usertablestatusesTable = "usertablestatuses";
  static final usertablestatusesCA = "created_at";
  static final usertablestatusesUpdateAt = "updated_at";
  static final usertablestatusesUserid = "userid";
  static final usertablestatusesStatus = "status";
  static final usertablestatusesnextstatus = "nextstatus";
  static final usertablestatusesisactive = "isactive";
  static final usertablestatusesCreatedBy = "createdby";
  static final usertablestatusesId = "id";

  //users Table

  static final usersTable = "users";
  static final usersName = "name";
  static final usersEmail = "email";
  // static final usersEmailVerifiedAt = "email_verified_at";
  // static final usersPassword = "password";
  // static final usersRememberToken = "remember_token";
  // static final usersSreatedAt = "created_at";
  // static final usersUpdatedAt = "updated_at";
  static final usersRole = "role";
  static final usersShiftId = "shift_id";
  static final usersBranchId = "branch_id";
  static final usersId = "id";

  //user_table_links

  static final userTableLinksTable = "user_table_links";
  static final userTableLinksCreatedAt = "created_at";
  static final userTableLinksUpdated_at = "updated_at";
  static final userTableLinksUserid = "userid";
  static final userTableLinkstableId = "table_id";
  static final userTableLinksActiveStatus = "active_status";
  static final userTableLinksId = "id";

//unit_of_measures

  static final UnitofMeasuresTable = "unit_of_measures";
  static final unitOfMeasuresCreatedAt = "created_at";
  static final unitOfMeasuresUpdatedAt = "updated_at";
  static final unitOfMeasuresCode = "code";
  static final unitOfMeasuresDescription = "description";
  static final unitOfMeasuresISCode = "international_standard_code";
  static final unitOfMeasuresId = "id";

//transactions Table

  static final transactionsTable = "transactions";
  static final transactionsCA = "created_at";
  static final transactionsUpdateAt = "updated_at";
  static final transactionsTNo = "transaction_no";
  static final transactionsReceiptNo = "receipt_no";
  static final transactionsStoreNo = "store_no";
  static final transactionsPOsTerminaNo = "pos_terminal_no";
  static final transactionsStaffId = "staff_id";
  static final transactionsTDate = "transaction_date";
  static final transactionsOriginalDate = "original_date";
  static final transactionsCustomerNo = "customer_no";
  static final transactionsNetAmount = "net_amount";
  static final transactionsGrossAmount = "gross_amount";
  static final transactionsPayment = "payment";
  static final transactionsDiscount = "discounts";
  static final transactionsTotalQuantity = "total_quantity";
  static final transactionsEntryStatus = "entry_status";
  static final transactionsNItemsLines = "no_of_item_lines";
  static final transactionsNPaymentLine = "no_of_payment_lines";
  static final transactionsTableN = "table_no";
  static final transactionsNoCovers = "no_of_covers";
  static final transactionsActiveTableN = "active_table_no";
  static final transactionsTableGroup = "table_group";
  static final transactionsKitchenStatus = "kitchen_status";
  static final transactionsOrderN = "order_no";
  static final transactionsTTime = "transaction_time";
  static final transactionsId = "id";

//transaction_table_infos Table

  static final transactionTableInfosTable = "transactionTableInfos";
  static final transactionTableInfosCA = "created_at";
  static final transactionTableInfosUpdateAt = "updated_at";
  static final transactionTableInfosTNo = "transaction_no";
  static final transactionTableInfosLineNo = "line_no";
  static final transactionTableInfosReceiptNo = "receipt_no";
  static final transactionTableInfosTableNo = "table_no";
  static final transactionTableInfosNGuests = "no_of_guests";
  static final transactionTableInfosTableStatus = "table_status";
  static final transactionTableInfosId = "id";

//transaction_table_cancelleds Table

  static final transactionTableCancelledsTable = "transaction_table_cancelleds";
  static final transactionTableCancelledsCA = "created_at";
  static final transactionTableCancelledsUpdateAt = "updated_at";
  static final transactionTableCancelledsTransactionN = "transaction_no";
  static final transactionTableCancelledsLineN = "line_no";
  static final transactionTableCancelledsReceiptN = "receipt_no";
  static final transactionTableCancelledsCR = "cancelled_reason";
  static final transactionTableCancelledsC = "cancelled_amount";
  static final transactionTableCancelledsCNA = "cancelled_net_amount";
  static final transactionTableCancelledsCQty = "cancelled_qty";
  static final transactionTableCancelledsId = "id";

//  Password resets

  static final PasswordResetsTable = "password_resets";
  static final passwordresetsE = "email";
  static final passwordresetsT = "token";
  static final passwordresetsCA = "created_at";

//  PaymentSetups table

  static final PaymentsetupsTable = "paymentsetups";
  static final paymentsetupsCA = "created_at";
  static final paymentsetupsUA = "updated_at";
  static final paymentsetupsC = "code";
  static final paymentsetupsD = "description";
  static final paymentsetupsHT = "hospitality_type";
  static final paymentsetupsFT = "function_type";
  static final paymentsetupsID = "id";

//  Personal Access tokens table

  static final PersonalAccessTokens = "personal_access_tokens";
  static final personalAccesstokenTT = "tokenable_type";
  static final personalAccesstokenTID = "tokenable_id";
  static final personalAccesstokenN = "name";
  static final personalAccesstokenT = "token";
  static final personalAccesstokenA = "abilities";
  static final personalAccesstokenLUA = "last_used_at";
  static final personalAccesstokenCA = "created_at";
  static final personalAccesstokenUA = "updated_at";
  static final personalAccesstokenID = "id";

//  Portion cost hierarchies table

  static final PortionCostHierarchies = "portion_cost_hierarchies";
  static final portionCHCA = "created_at";
  static final portionCHUA = "updated_at";
  static final portionCHPHL = "portion_cost_hierarchy_label";
  static final portionCHPC = "portion_cost_hierarchy_code";
  static final portionCHE = "extra";
  static final portionCHIA = "is_active";
  static final portionCHID = "id";

//  Portion weights

  static final PortionWeightsTable = "portion_weights";
  static final portionWeightsCA = "created_at";
  static final portionWeightsUA = "updated_at";
  static final portionWeightsPWL = "portion_weight_label";
  static final portionWeightsPWC = "portion_weight_code";
  static final portionWeightsPWV = "portion_weight_value";
  static final portionWeightsE = "extra";
  static final portionWeightsIA = "is_active";
  static final portionWeightsID = "id";

//  Pos staff permission groups table

  static final PosstaffPermissionGroupTable = "posstaffpermissiongroups";
  static final posstaffpermissiongtCA = "created_at";
  static final posstaffpermissiongtUA = "updated_at";
  static final posstaffpermissiongtC = "code";
  static final posstaffpermissiongtD = "description";
  static final posstaffpermissiongtMP = "manager_privileges";
  static final posstaffpermissiongtAP = "allow_payments";
  static final posstaffpermissiongtAD = "allow_discounts";
  static final posstaffpermissiongtAC = "allow_cancellation";
  static final posstaffpermissiongtID = "id";

//  Product group masters

  static final ProductGroupMasters = "product_group_masters";
  static final productgroupMasterCA = "created_at";
  static final productgroupMasterUA = "updated_at";
  static final productgroupMasterPGL = "product_group_label";
  static final productgroupMasterPGC = "product_group_code";
  static final productgroupMasterE = "extra";
  static final productgroupMasterIA = "is_active";
  static final productgroupMasterID = "id";

//  Product hierarchy links

  static final ProductHierarchyLinkstable = "product_hierarchy_links";
  static final producthierarchylinkCA = "created_at";
  static final producthierarchylinkUA = "updated_at";
  static final producthierarchylinkPID = "product_id";
  static final producthierarchylinkHID = "hierarchy_id";
  static final producthierarchylinkID = "id";

//  Product pictures

  static final ProductPictures = "productpictures";
  static final productpicturesCA = "created_at";
  static final productpicturesUA = "updated_at";
  static final productpicturesPID = "product_id";
  static final productpicturesIURL = "image_url";
  static final productpicturesIT = "image_type";
  static final productpicturesP = "priority";
  static final productpicturesIA = "is_active";
  static final productpicturesID = "id";

//  Products table

  static final ProductsTable = "products";
  static final productsCA = "created_at";
  static final productsUA = "updated_at";
  static final productsN = "name";
  static final productsS = "slug";
  static final productsD = "description";
  static final productsP = "price";
  static final productsID = "id";

//  Profiles table

  static final ProfilesTable = "profiles";
  static final profilesCA = "created_at";
  static final profilesUA = "updated_at";
  static final profilesC = "code";
  static final profilesD = "description";
  static final profilesHT = "hospitality_type";
  static final profilesSC = "store_code";
  static final profilesID = "id";

//  Reason Details

  static final ReasonDetailsTable = "reason_details";
  static final reasondetailsCA = "created_at";
  static final reasondetailsUA = "updated_at";
  static final reasondetailsRD = "reason_description";
  static final reasondetailsRMID = "reason_master_id";
  static final reasondetailsIA = "is_active";
  static final reasondetailsID = "id";

//  Reason Masters

  static final ReasonMastersTable = "reason_masters";
  static final reasonmasterCA = "created_at";
  static final reasonmasterUA = "updated_at";
  static final reasonmasterR = "reason";
  static final reasonmasterRT = "reason_type";
  static final reasonmasterIA = "is_active";
  static final reasonmasterID = "id";

//  Recipe Master details

  static final RecipeMasterDetailsTable = "recipemasterdetails";
  static final recipemasterdetailCA = "created_at";
  static final recipemasterdetailUA = "updated_at";
  static final recipemasterdetailIN = "item_no";
  static final recipemasterdetailD = "duration";
  static final recipemasterdetailC = "category";
  static final recipemasterdetailRC = "recipe_code";
  static final recipemasterdetailID = "id";

//  Recipe masters

  static final RecipeMastersTable = "recipemasters";
  static final recipemastersCA = "created_at";
  static final recipemastersUA = "updated_at";
  static final recipemastersRC = "recipe_code";
  static final recipemastersRN = "recipe_name";
  static final recipemastersS = "servings";
  static final recipemastersID = "id";

//  Shift operation table

  static final ShifOperationTable = "shiftoperation";
  static final shiftoperarionCA = "created_at";
  static final shiftoperarionUA = "update_at";
  static final shiftoperarionSID = "shiftoperation_id";
  static final shiftoperarionOT = "open_time";
  static final shiftoperarionCT = "close_time";
  static final shiftoperarionID = "id";

//  Staff table

  static final StaffTable = "staff";
  static final staffCA = "created_at";
  static final staffUA = "updated_at";
  static final staffN = "name";
  static final staffNT = "name_two";
  static final staffPG = "permission_group";
  static final staffID = "id";

//  state master table

  static final StateMastertable = "state_master";
  static final statemasterCA = "created_at";
  static final statemasterUA = "updated_at";
  static final statemasterN = "name";
  static final statemasterCID = "country_id";
  static final statemasterCC = "country_code";
  static final statemasterCN = "country_name";
  static final statemasterSC = "state_code";
  static final statemasterT = "type";
  static final statemasterLT = "latitude";
  static final statemasterL = "longitude";
  static final statemasterID = "id";

//  Store configurations

  static final StoreConfigurationsTable = "storeconfigurations";
  static final storeconfigCA = "created_at";
  static final storeconfigUA = "updated_at";
  static final storeconfigNO = "no";
  static final storeconfigN = "name";
  static final storeconfigAD = "address";
  static final storeconfigAD2 = "address2";
  static final storeconfigC = "city";
  static final storeconfigPCC = "postcode";
  static final storeconfigSID = "storemanager_id";
  static final storeconfigSN = "storemanager_name";
  static final storeconfigPN = "phone_no";
  static final storeconfigCCC = "country_code";
  static final storeconfigE = "email";
  static final storeconfigCC = "currency_code";
  static final storeconfigPC = "profile_code";
  static final storeconfigID = "id";

//  Store paymentsetups

  static final StorePaymentsetupsTable = "storepaymentsetups";
  static final storepaymentsetupsCA = "created_at";
  static final storepaymentsetupsUA = "update_at";
  static final storepaymentsetupsC = "code";
  static final storepaymentsetupsD = "description";
  static final storepaymentsetupsSC = "store_code";
  static final storepaymentsetupsHT = "hospitality_type";
  static final storepaymentsetupsACN = "ask_for_card_no";
  static final storepaymentsetupsID = "id";

// Table configurators

  static final TableConfiguratorsTable = "table_configurators";
  static final tableconfiguratostableCA = "created_at";
  static final tableconfiguratostableUA = "updated_at";
  static final tableconfiguratostableE = "enabled";
  static final tableconfiguratostableFNO = "field_no";
  static final tableconfiguratostableFN = "field_name";
  static final tableconfiguratostableC = "caption";
  static final tableconfiguratostableDT = "data_type";
  static final tableconfiguratostableL = "length";
  static final tableconfiguratostableD = "description";
  static final tableconfiguratostableFC = "field_class";
  static final tableconfiguratostableOS = "option_string";
  static final tableconfiguratostableFORM = "form_id";
  static final tableconfiguratostablePG = "page_id";
  static final tableconfiguratostableSID = "store_id";
  static final tableconfiguratostableUID = "user_id";
  static final tableconfiguratostableUIC = "ui_columns";
  static final tableconfiguratostableP = "priority";
  static final tableconfiguratostableGI = "group_id";
  static final tableconfiguratostableGL = "group_label";
  static final tableconfiguratostableM = "mandatory";
  static final tableconfiguratostableOT = "option_type";
  static final tableconfiguratostableOU = "option_url";
  static final tableconfiguratostableOK = "option_key";
  static final tableconfiguratostableOL = "option_label";
  static final tableconfiguratostableID = "id";
  static final tableconfiguratostableFE = "form_enabled";

//  Table member details table

  static final TablememberDetails = "table_member_details";
  static final tablememberdetailsCA = "created_at";
  static final tablememberdetailsUA = "updated_at";
  static final tablememberdetailsP = "product_at";
  static final tablememberdetailsTOP = "time_of_preparation";
  static final tablememberdetailsTOD = "time_of_delivery";
  static final tablememberdetailsTOC = "time_of_completion";
  static final tablememberdetailsN = "notes";
  static final tablememberdetailsID = "id";

//  Table member headers not created table from here

  static final TableMemberHeaders = "table_member_headers";
  static final tablememberheadersCA = "created_at";
  static final tablememberheadersUA = "updated_at";
  static final tablememberheadersCID = "chair_id";
  static final tablememberheadersOID = "order_id";
  static final tablememberheadersWID = "waiter_id";
  static final tablememberheadersTID = "table_id";
  static final tablememberheadersID = "id";

//  Table set up statuses

  static final TablesetUpstatusesTable = "table_setup_statuses";
  static final tablesetupstatusesCAT = "created_at";
  static final tablesetupstatusesUAT = "updated_at";
  static final tablesetupstatusesTID = "tableid";
  static final tablesetupstatusesS = "status";
  static final tablesetupstatusesN = "notes";
  static final tablesetupstatusesSI = "status_icon";
  static final tablesetupstatusesTRID = "transaction_ref_id";
  static final tablesetupstatusesUID = "user_id";
  static final tablesetupstatusesPS = "previous_status";
  static final tablesetupstatusesGC = "guest_count";
  static final tablesetupstatusesID = "id";

//  Table statuses table

  static final TableStatusesTable = "table_statuses";
  static final tablestatusesCA = "created_at";
  static final tablestatusesUA = "updated_at";
  static final tablestatusesSL = "status_label";
  static final tablestatusesIC = "icon";
  static final tablestatusesLC = "label_color";
  static final tablestatusesID = "id";

// Table form links table

  static final TableformLinkstable = "tableformlinks";
  static final tableformlinksCA = "created_at";
  static final tableformlinksUA = "updated_at";
  static final tableformlinksFID = "form_id";
  static final tableformlinksTN = "table_name";
  static final tableformlinksMN = "model_name";
  static final tableformlinksIA = "is_active";
  static final tableformlinksID = "id";
  static final tableformlinksUID = "user_id";

//  Tables setups

  static final Tablesetupstable = "tablesetups";
  static final tablesetupsCA = "created_at";
  static final tablesetupsUA = "updated_at";
  static final tablesetupsLC = "layoutcode";
  static final tablesetupsD = "description";
  static final tablesetupsMG = "maximum_guests";
  static final tablesetupsTAAM = "trigger_alert_after_min";
  static final tablesetupsHT = "hospitality_type";
  static final tablesetupsS = "section";
  static final tablesetupsID = "id";

//  Temporary order details

  static final TemporaryOrderDetailstable = "temporary_order_details";
  static final temporaryorderdetailsCA = "created_at";
  static final temporaryorderdetailsUA = "updated_at";
  static final temporaryorderdetailsTN = "transaction_no";
  static final temporaryorderdetailsRN = "receipt_no";
  static final temporaryorderdetailsLN = "line_no";
  static final temporaryorderdetailsPC = "product_code";
  static final temporaryorderdetailsES = "entry_status";
  static final temporaryorderdetailsDES = "description";
  static final temporaryorderdetailsUOM = "uom";
  static final temporaryorderdetailsSN = "store_no";
  static final temporaryorderdetailsPTN = "pos_terminal_no";
  static final temporaryorderdetailsQ = "quantity";
  static final temporaryorderdetailsVP = "vat_percent";
  static final temporaryorderdetailsDP = "discount_percent";
  static final temporaryorderdetailsDA = "discount_amount";
  static final temporaryorderdetailsNA = "net_amount";
  static final temporaryorderdetailsVA = "vat_amount";
  static final temporaryorderdetailsA = "amount";
  static final temporaryorderdetailsAIE = "additional_info_exist";
  static final temporaryorderdetailsST = "sales_type";
  static final temporaryorderdetailsLIE = "line_is_excluded";
  static final temporaryorderdetailsACL = "additional_charge_lines_exist";
  static final temporaryorderdetailsSS = "sales_staff";
  static final temporaryorderdetailsCID = "coverid";
  static final temporaryorderdetailsPIO = "parent_item_no";
  static final temporaryorderdetailsPORFN = "parent_order_ref_no";
  static final temporaryorderdetailsID = "id";

//  Temporary order headers

  static final TemporaryOrderHeaderstable = "temporary_order_headers";
  static final temporaryorderheadersCA = "created_at";
  static final temporaryorderheadersUA = "updated_at";
  static final temporaryorderheadersTN = "transaction_no";
  static final temporaryorderheadersRN = "receipt_no";
  static final temporaryorderheadersLN = "line_no";
  static final temporaryorderheadersPC = "product_code";
  static final temporaryorderheadersES = "entry_status";
  static final temporaryorderheadersD = "description";
  static final temporaryorderheadersUOM = "uom";
  static final temporaryorderheadersSN = "store_no";
  static final temporaryorderheadersPTN = "pos_terminal_no";
  static final temporaryorderheadersQ = "quantity";
  static final temporaryorderheadersVP = "vat_percent";
  static final temporaryorderheadersDP = "discount_percent";
  static final temporaryorderheadersDA = "discount_amount";
  static final temporaryorderheadersNA = "net_amount";
  static final temporaryorderheadersVA = "vat_amount";
  static final temporaryorderheadersA = "amount";
  static final temporaryorderheadersATIF = "additional_info_exist";
  static final temporaryorderheadersST = "sales_type";
  static final temporaryorderheadersLCS = "line_current_status";
  static final temporaryorderheadersAD = "additional_charge_lines_exist";
  static final temporaryorderheadersSS = "sales_staff";
  static final temporaryorderheadersCOID = "coverid";
  static final temporaryorderheadersPIT = "parent_item_no";
  static final temporaryorderheadersH = "hierarchy";
  static final temporaryorderheadersPOR = "parent_order_ref_no";
  static final temporaryorderheadersVAC = "vat_code";
  static final temporaryorderheadersVAP = "vat_percentage";
  static final temporaryorderheadersUPA = "unit_price_amount";
  static final temporaryorderheadersUPWT = "unit_price_without_tax";
  static final temporaryorderheadersGA = "gross_amount";
  static final temporaryorderheadersAWT = "amount_without_tax";
  static final temporaryorderheadersTA = "tax_amount";
  static final temporaryorderheadersPT = "price_includes_tax";
  static final temporaryorderheadersKRID = "kot_ref_id";
  static final temporaryorderheadersDN = "deal_name";
  static final temporaryorderheadersDTL = "deal_trn_link";
  static final temporaryorderheadersID = "id";
  static final temporaryorderheadersVC = "variant_code";

// Temporary transaction delivery table

  static final TemporaryTransactiondeliverytable =
      "temporary_transaction_deliveries";
  static final temporarytransactiondeliveryCA = "created_at";
  static final temporarytransactiondeliveryUA = "updated_at";
  static final temporarytransactiondeliveryCID = "customer_id";
  static final temporarytransactiondeliveryCc = "company_code";
  static final temporarytransactiondeliveryNO = "no";
  static final temporarytransactiondeliveryFN = "first_name";
  static final temporarytransactiondeliveryLN = "last_name";
  static final temporarytransactiondeliveryS = "salutation";
  static final temporarytransactiondeliveryN = "nationality";
  static final temporarytransactiondeliveryC = "country_code";
  static final temporarytransactiondeliveryCC = "credit_cusotmer";
  static final temporarytransactiondeliveryVR = "var_registraion_on";
  static final temporarytransactiondeliveryMN = "mobile_no";
  static final temporarytransactiondeliveryAMN = "alt_mobile_no";
  static final temporarytransactiondeliveryE = "email";
  static final temporarytransactiondeliverySS = "status";
  static final temporarytransactiondeliveryCB = "created_by";
  static final temporarytransactiondeliveryCD = "created_date";
  static final temporarytransactiondeliveryUD = "updated_date";
  static final temporarytransactiondeliveryZRID = "zreportid";
  static final temporarytransactiondeliveryid = "id";

//  Temporary transaction delivery addresses

  static final TemporaryTransactiondeliveryaddress =
      "temporary_transaction_delivery_addresses";
  static final temporarytransactiondeliveryaddressesCA = "created_at";
  static final temporarytransactiondeliveryaddressesUA = "updated_at";
  static final temporarytransactiondeliveryaddressesAID = "address_id";
  static final temporarytransactiondeliveryaddressesCMCODE = "company_code";
  static final temporarytransactiondeliveryaddressesCID = "customer_id";
  static final temporarytransactiondeliveryaddressesCUSTNO = "customer_no";
  static final temporarytransactiondeliveryaddressesCODE = "code";
  static final temporarytransactiondeliveryaddressesFN = "first_name";
  static final temporarytransactiondeliveryaddressesLN = "last_name";
  static final temporarytransactiondeliveryaddressesSALU = "salutation";
  static final temporarytransactiondeliveryaddressesLINE = "line";
  static final temporarytransactiondeliveryaddressesLT = "line_two";
  static final temporarytransactiondeliveryaddressesCC = "country_code";
  static final temporarytransactiondeliveryaddressesGHID = "gero_hierarchy_id";
  static final temporarytransactiondeliveryaddressesBC = "building_code";
  static final temporarytransactiondeliveryaddressesLM = "landmark";
  static final temporarytransactiondeliveryaddressesLAT = "latitude";
  static final temporarytransactiondeliveryaddressesLONG = "longitude";
  static final temporarytransactiondeliveryaddressesGA = "geo_address";
  static final temporarytransactiondeliveryaddressesFLR = "floor_no";
  static final temporarytransactiondeliveryaddressesFNO = "flat_no";
  static final temporarytransactiondeliveryaddressesPN = "phone_no";
  static final temporarytransactiondeliveryaddressesAPN = "alt_phone_no";
  static final temporarytransactiondeliveryaddressesMN = "mobile_no";
  static final temporarytransactiondeliveryaddressesAMN = "alt_mobile_no";
  static final temporarytransactiondeliveryaddressesFNno = "fax_no";
  static final temporarytransactiondeliveryaddressesPBN = "po_box_no";
  static final temporarytransactiondeliveryaddressesE = "email";
  static final temporarytransactiondeliveryaddressesP = "primary";
  static final temporarytransactiondeliveryaddressesBS = "business";
  static final temporarytransactiondeliveryaddressesB = "billing";
  static final temporarytransactiondeliveryaddressesSH = "shipping";
  static final temporarytransactiondeliveryaddressesS = "status";
  static final temporarytransactiondeliveryaddressesCB = "created_by";
  static final temporarytransactiondeliveryaddressesCD = "created_date";
  static final temporarytransactiondeliveryaddressesUB = "updated_by";
  static final temporarytransactiondeliveryaddressUD = "updated_date";
  static final temporarytransactiondeliveryaddressesid = "id";

//  Temporary transaction headers

  static final TemporaryTransactionHeaderstable =
      "temporary_transaction_headers";
  static final temporarytransactionheaderCA = "created_at";
  static final temporarytransactionheaderUA = "updated_at";
  static final temporarytransactionheaderTN = "transaction_no";
  static final temporarytransactionheaderRN = "receipt_no";
  static final temporarytransactionheaderSN = "store_no";
  static final temporarytransactionheaderPOT = "pos_terminal_no";
  static final temporarytransactionheaderSID = "staff_id";
  static final temporarytransactionheaderTD = "transaction_date";
  static final temporarytransactionheaderOD = "original_date";
  static final temporarytransactionheaderCN = "customer_no";
  static final temporarytransactionheaderNA = "net_amount";
  static final temporarytransactionheaderGA = "gross_amount";
  static final temporarytransactionheaderP = "payment";
  static final temporarytransactionheaderD = "discounts";
  static final temporarytransactionheaderTQ = "total_quantity";
  static final temporarytransactionheaderES = "entry_status";
  static final temporarytransactionheaderLIL = "no_of_item_lines";
  static final temporarytransactionheaderNPL = "no_of_payment_lines";
  static final temporarytransactionheaderTNO = "table_no";
  static final temporarytransactionheaderTC = "table_capacity";
  static final temporarytransactionheaderNOC = "no_of_covers";
  static final temporarytransactionheaderATN = "active_table_no";
  static final temporarytransactionheaderTG = "table_group";
  static final temporarytransactionheaderKS = "kitchen_status";
  static final temporarytransactionheaderON = "order_no";
  static final temporarytransactionheaderOCS = "order_current_status";
  static final temporarytransactionheaderODID = "order_delivery_id";
  static final temporarytransactionheaderVA = "vat_amount";
  static final temporarytransactionheaderZID = "zreport_id";
  static final temporarytransactionheaderTT = "transaction_time";
  static final temporarytransactionheaderID = "id";
  static final temporarytransactionheaderVC = "variant_code";

//  Transaction additional infos

  static final TransactionAdditionalInfostable = "transaction_additional_infos";
  static final transactionadditonalinfoCA = "created_at";
  static final transactionadditonalinfoUA = "updated_at";
  static final transactionadditonalinfoTN = "transaction_no";
  static final transactionadditonalinfoLN = "line_no";
  static final transactionadditonalinfoRN = "receipt_no";
  static final transactionadditonalinfoAIT = "additional_info_type";
  static final transactionadditonalinfoAPC = "additional_product_code";
  static final transactionadditonalinfoAT = "additional_text";
  static final transactionadditonalinfoEPC = "excluded_product_code";
  static final transactionadditonalinfoID = "id";

//  Transaction item details table

  static final TransactionItemdetailstable = "transaction_item_details";
  static final transactionitemdetailsCA = "created_at";
  static final transactionitemdetailsUA = "updated_at";
  static final transactionitemdetailsTN = "transaction_no";
  static final transactionitemdetailsRN = "receipt_no";
  static final transactionitemdetailsLN = "line_no";
  static final transactionitemdetailsPC = "product_code";
  static final transactionitemdetailsES = "entry_status";
  static final transactionitemdetailsD = "description";
  static final transactionitemdetailsUOM = "uom";
  static final transactionitemdetailsSN = "store_no";
  static final transactionitemdetailsPTN = "pos_terminal_no";
  static final transactionitemdetailsQ = "quantity";
  static final transactionitemdetailsVP = "vat_percent";
  static final transactionitemdetailsDP = "discount_percent";
  static final transactionitemdetailsDA = "discount_amount";
  static final transactionitemdetailsNA = "net_amount";
  static final transactionitemdetailsVA = "vat_amount";
  static final transactionitemdetailsA = "amount";
  static final transactionitemdetailsAIE = "additional_info_exist";
  static final transactionitemdetailsST = "sales_type";
  static final transactionitemdetailsLE = "line_is_excluded";
  static final transactionitemdetailsACLE = "additional_charge_lines_exist";
  static final transactionitemdetailsss = "sales_staff";
  static final transactionitemdetailsId = "id";

//  Transaction payment details

  static final TransactionpaymentDetailstable = "transaction_payment_details";
  static final transactionpaymentdetailsCA = "created_at";
  static final transactionpaymentdetailsUA = "updated_at";
  static final transactionpaymentdetailsTN = "transaction_no";
  static final transactionpaymentdetailsLN = "line_no";
  static final transactionpaymentdetailsRN = "receipt_no";
  static final transactionpaymentdetailsCN = "card_no";
  static final transactionpaymentdetailsER = "exchange_rate";
  static final transactionpaymentdetailsAT = "amount_tendered";
  static final transactionpaymentdetailsCC = "currency_code";
  static final transactionpaymentdetailsAIC = "amount_in_currency";
  static final transactionpaymentdetailsCOA = "card_or_account";
  static final transactionpaymentdetailsDATE = "date";
  static final transactionpaymentdetailsT = "time";
  static final transactionpaymentdetailsSN = "store_no";
  static final transactionpaymentdetailsPTN = "pos_terminal_no";
  static final transactionpaymentdetailsSID = "staff_id";
  static final transactionpaymentdetailsAC = "additional_charge";
  static final transactionpaymentdetailsTIPS = "tips";
  static final transactionpaymentdetailsZRID = "zreport_id";
  static final transactionpaymentdetailsID = "id";

//  Transaction table cancelleds table
//   static final TransactionTableCancelleds = "transaction_table_cancelleds";
//   static final transactiontablecancelledsCA = "created_at";
//   static final transactiontablecancelledsUA = "updated_at";
//   static final transactiontablecancelledsTN = "transaction_no";
//   static final transactiontablecancelledsLN = "line_no";
//   static final transactiontablecancelledsRN = "receipt_no";
//   static final transactiontablecancelledsCR = "cancelled_reason";
//   static final transactiontablecancelledsCAm = "cancelled_amount";
//   static final transactiontablecancelledsCNA = "cancelled_net_amount";
//   static final transactiontablecancelledsCQ = "cancelled_qty";
//   static final transactiontablecancelledsID = "id";

  // Customer addresses table

  static final CustomerAddressesTable = "customer_addresses";
  static final customeraddressesCA = "created_at";
  static final customeraddressesUA = "updated_at";
  static final customeraddressesa = "address_id";
  static final customeraddressesCc = "company_code";
  static final customeraddressesCID = "customer_id";
  static final customeraddressesCN = "customer_no";
  static final customeraddressesC = "code";
  static final customeraddressesFNA = "first_name";
  static final customeraddressesLN = "last_name";
  static final customeraddressesSA = "salutation";
  static final customeraddressesLINE = "line";
  static final customeraddressesLTW = "line_two";
  static final customeraddressesCC = "country_code";
  static final customeraddressesGHID = "geo_hierarchy_id";
  static final customeraddressesBC = "building_code";
  static final customeraddressesLM = "landmark";
  static final customeraddressesLA = "latitude";
  static final customeraddressesL = "longitude";
  static final customeraddressesGA = "geo_address";
  static final customeraddressesFNO = "floor_no";
  static final customeraddressesFN = "flat_no";
  static final customeraddressesPBN = "po_box_no";
  static final customeraddressesE = "email";
  static final customeraddressesP = "primary";
  static final customeraddressesBSN = "business";
  static final customeraddressesB = "billing";
  static final customeraddressesS = "shipping";
  static final customeraddressesSS = "status";
  static final customeraddressesDB = "created_by";
  static final customeraddressesCD = "created_date";
  static final customeraddressesUB = "updated_by";
  static final customeraddressesUD = "updated_date";
  static final customeraddressesID = "id";

//  Erp item Master table

  static final ErpItemMastertable = "erp_item_master";
  static final erpitemmasterBN = "brand_name";
  static final erpitemmasterBC = "band_code";
  static final erpitemmasterCN = "category_name";
  static final erpitemmasterCM = "combo_menu";
  static final erpitemmasterCc = "company_code";
  static final erpitemmasterCDT = "creation_date_time";
  static final erpitemmasterIP = "invent_price";
  static final erpitemmasterIU = "invent_unit";
  static final erpitemmasterIG = "item_group";
  static final erpitemmasterIMG = "item_model_group";
  static final erpitemmasterMDT = "modified_date_time";
  static final erpitemmasterSN = "serch_name";
  static final erpitemmasterSL = "shelf_life";
  static final erpitemmasterVN = "vendor_no";
  static final erpitemmasterAD = "arabic_description";
  static final erpitemmasterCA = "created_at";
  static final erpitemmasterUA = "updated_at";
  static final erpitemmasterIC = "item_code";
  static final erpitemmasterD = "item_description";
  static final erpitemmasterIN = "item_name";
  static final erpitemmasterPP = "purch_price";
  static final erpitemmasterPU = "purch_unit";
  static final erpitemmasterSP = "sales_price";
  static final erpitemmasterSU = "sales_unit";
  static final erpitemmasterSName = "sction_name";
  static final erpitemmasterID = "id";

//  Erp item Masters table

  static final ErpItemMastersTable = "erp_item_masters";
  static final erpitemmastersCA = "created_at";
  static final erpitemmastersUA = "updated_at";
  static final erpitemmastersAD = "arabic_description";
  static final erpitemmastersBN = "brand_name";
  static final erpitemmastersBC = "band_code";
  static final erpitemmastersCN = "category_name";
  static final erpitemmastersCM = "combo_menu";
  static final erpitemmastersCC = "company_code";
  static final erpitemmastersCD = "creation_date_time";
  static final erpitemmastersIP = "invent_price";
  static final erpitemmastersIU = "invent_unit";
  static final erpitemmastersIC = "item_code";
  static final erpitemmastersID = "item_description";
  static final erpitemmastersIG = "item_group";
  static final erpitemmastersITMG = "item_model_group";
  static final erpitemmastersIN = "item_name";
  static final erpitemmastersMDT = "modified_date_time";
  static final erpitemmastersPP = "purch_price";
  static final erpitemmastersPU = "purch_unit";
  static final erpitemmastersSP = "sales_price";
  static final erpitemmastersSU = "sales_unit";
  static final erpitemmastersSNAME = "sction_name";
  static final erpitemmastersSN = "serch_name";
  static final erpitemmastersSL = "shelf_life";
  static final erpitemmastersVN = "vendor_no";
  static final erpitemmastersId = "id";

//  Item groupings table

  static final ItemGroupingsTable = "item_groupings";
  static final itemgroupingsCA = "created_at";
  static final itemgroupingsUA = "updated_at";
  static final itemgroupingsIGID = "item_grouping_id";
  static final itemgroupingsCC = "company_code";
  static final itemgroupingsPID = "parent_id";
  static final itemgroupingsL = "level";
  static final itemgroupingsC = "code";
  static final itemgroupingsN = "name";
  static final itemgroupingsNT = "name_two";
  static final itemgroupingsS = "status";
  static final itemgroupingsCB = "created_by";
  static final itemgroupingsCD = "created_date";
  static final itemgroupingsUB = "updated_by";
  static final itemgroupingsUD = "updated_date";
  static final itemgroupingsID = "id";

//Item ledgers table

  static final ItemLedgersTable = "item_ledgers";
  static final itemledgersCA = "created_at";
  static final itemledgersUA = "updated_at";
  static final itemledgersEN = "entry_no";
  static final itemledgersIN = "item_no";
  static final itemledgersPD = "posting_date";
  static final itemledgersET = "entry_type";
  static final itemledgersSN = "source_no";
  static final itemledgersDN = "document_no";
  static final itemledgersD = "description";
  static final itemledgersLC = "location_code";
  static final itemledgersQ = "quantity";
  static final itemledgersRQ = "remaining_quantity";
  static final itemledgersIQ = "invoiced_quantity";
  static final itemledgersAE = "applies-to_entry";
  static final itemledgersO = "open";
  static final itemledgersGD1 = "global_dimension_1_code";
  static final itemledgersGD2 = "global_dimension_2_code";
  static final itemledgersP = "positive";
  static final itemledgersSST = "source_type";
  static final itemledgersDS = "drop_shipment";
  static final itemledgersTTT = "transaction_type";
  static final itemledgersTM = "transport_method";
  static final itemledgersCRC = "country/region_code";
  static final itemledgersEEP = "entry/exit_point";
  static final itemledgersDD = "document_date";
  static final itemledgersED = "external_document_no";
  static final itemledgersA = "area";
  static final itemledgersTS = "transaction_specification";
  static final itemledgersNS = "no_series";
  static final itemledgersRQQ = "reserved_quantity";
  static final itemledgersDT = "document_type";
  static final itemledgersDLN = "document_line_no";
  static final itemledgersJTFF = "job_task_no";
  static final itemledgersJP = "job_purchase";
  static final itemledgersPON = "prod_order_no";
  static final itemledgersVC = "variant_code";
  static final itemledgersQPM = "qty_per_unit_of_measure";
  static final itemledgersUMC = "unit_of_measure_code";
  static final itemledgersDBO = "derived_from_blanket_order";
  static final itemledgersCRN = "cross-reference_no";
  static final itemledgersOON = "originally_ordered_no";
  static final itemledgersOFS = "out-of-stock_substitution";
  static final itemledgersITC = "item_category_code";
  static final itemledgersNONS = "nonstock";
  static final itemledgersPC = "purchasing_code";
  static final itemledgersPGC = "product_group_code";
  static final itemledgersTON = "transfer_order_no";
  static final itemledgersCI = "completely_invoiced";
  static final itemledgersLID = "last_invoice_date";
  static final itemledgersAEA = "applied_entry_to_adjust";
  static final itemledgersCAE = "cost_amount_(expected)";
  static final itemledgersCAA = "cost_amount_(actual)";
  static final itemledgersCANON = "cost_amount_(non-invtbl)";
  static final itemledgersCAEA = "cost_amount_(expected)_(acy)";
  static final itemledgersSMA = "purchase_amount_(expected)";
  static final itemledgersSA = "sales_amount(expected)";
  static final itemledgersSAC = "sales_amount(actual)";
  static final itemledgersC = "correction";
  static final itemledgersS = "shipped_qty_not_returned";
  static final itemledgersPOLN = "prod_order_line_no";
  static final itemledgersPOCLN = "prod_order_comp_line_no";
  static final itemledgersSON = "service_order_no";
  static final itemledgersSNN = "serial_no";
  static final itemledgersLT = "lot_no";
  static final itemledgersWD = "warranty_date";
  static final itemledgersEDD = "expiration_date";
  static final itemledgersIT = "item_tracking";
  static final itemledgersRRC = "return_reason_code";
  static final itemledgersON = "offer_no";
  static final itemledgersBN = "batch_no";
  static final itemledgersURV = "unit_retail_value";
  static final itemledgersTY = "transfer_type";
  static final itemledgersSNNo = "statement_no";
  static final itemledgersID = "id";

//  Item modifier header

  static final ItemModifierHeadertable = "item_modifier_header";
  static final itemmodifierheaderID = "id";
  static final itemmodifierheaderCA = "created_at";
  static final itemmodifierheaderUA = "updated_at";
  static final itemmodifierC = "code";
  static final itemmodifierDSC = "description";
  static final itemmodifierPRMT = "prompt";
  static final itemmodifierDP = "display_option";
  static final itemmodifierOPT = "once_per_transaction";
  static final itemmodifierMINS = "min_selection";
  static final itemmodifierMSS = "max_selection";
  static final itemmodifierSD = "start_date";
  static final itemmodifierED = "end_date";
  static final itemmodifierMS = "multiple_selection";
  static final itemmodifierT = "triggering";
  static final itemmodifierP = "priority";
  static final itemmodifierUOM = "uom";
  static final itemmodifierIN = "item_no";

//  Item modifiers table

  static final ItemModifiersTable = "item_modifiers";
  static final itemmodifiersCA = "created_at";
  static final itemmodifiersUA = "updated_at";
  static final itemmodifiersID = "id";

  //devices table

  static final devicesTable = "devices";
  static final devicesCA = "created_at";
  static final devicesUpdateAt = "updated_at";
  static final devicesModal = "model";
  static final devicesPlatform = "platform";
  static final devicesUuid = "uuid";
  static final devicesId = "id";
  static final devicesVersion = "version";
  static final devicesManufacturer = "manufacturer";
  static final devicesIsVirtual = "isVirtual";
  static final devicesSerial = "serial";
  static final devicesSdkVersion = "sdkVersion";
  static final devicesAppbundle = "appbundle";
  static final devicesIsaction = "isactive";
  static final devicesDeviseToken = "device_token";
  static final devicesTenantId = "tenant_id";
  static final devicesCustmerId = "customer_id";
  static final devicesDeviceImage = "device_image";
  static final devicesPushId = "push_id";

// Item prices table

  static final ItemPricesTable = "item_prices";
  static final itempricesCA = "created_at";
  static final itempricesUA = "updated_at";
  static final itempricesIN = "item_no";
  static final itempricesSC = "store_code";
  static final itempricesUP = "unit_price";
  static final itempricesUPI = "unit_price_incl_vat";
  static final itempricesSD = "start_date";
  static final itempricesED = "end_date";
  static final itempricesUOM = "uom";
  static final itempricesVC = "vat_code";
  static final itempricesLC = "location_code";
  static final itempricesVCC = "variant_code";
  static final itempricesCC = "currency_code";
  static final itempricesST = "start_time";
  static final itempricesET = "end_time";
  static final itempricesIP = "item_price";
  static final itempricesID = "id";

  // Item setups tablea

  static final ItemsetupsTable = "item_setups";
  static final itemsetupsCA = "created_at";
  static final itemsetupsUA = "updated_at";
  static final itemsetupsIN = "item_no";
  static final itemsetupsIMI = "is_menu_item";
  static final itemsetupsEB = "explode_bom";
  static final itemsetupsSS = "store_code";
  static final itemsetupsLC = "location_code";
  static final itemsetupsCC = "currency_code";
  static final itemsetupsPI = "packaging_item";
  static final itemsetupsIA = "is_active";
  static final itemsetupsSD = "start_date";
  static final itemsetupsED = "end_date";
  static final itemsetupsST = "start_time";
  static final itemsetupsET = "end_time";
  static final itemsetupsHT = "hospitality_type";

//  Item masters table

  static final ItemMastersTable = "itemmasters";
  static final itemmastersCA = "created_at";
  static final itemmastersUA = "updated_at";
  static final itemmastersIID = "item_id";
  static final itemmastersCc = "company_code";
  static final itemmastersN = "no";
  static final itemmastersRN = "reference_no";
  static final itemmastersD = "description";
  static final itemmastersDT = "description_two";
  static final itemmastersLD = "long_description";
  static final itemmastersLDT = "long_description_two";
  static final itemmastersVN = "vendor_no";
  static final itemmastersVIN = "vendor_item_no";
  static final itemmastersAOC = "attr_one_code";
  static final itemmastersATCC = "attr_two_code";
  static final itemmastersATC = "attr_three_code";
  static final itemmastersAFC = "attr_five_code";
  static final itemmastersFC = "family_code";
  static final itemmastersBC = "brand_code";
  static final itemmastersCCC = "color_code";
  static final itemmastersDC = "division_code";
  static final itemmastersCC = "category_code";
  static final itemmastersGC = "group_code";
  static final itemmastersSGC = "sub_group_code";
  static final itemmastersSSGC = "sub_sub_group_code";
  static final itemmastersBUMC = "base_unit_of_measure_code";
  static final itemmastersPUC = "purchase_uom_code";
  static final itemmastersSUC = "sales_uom_code";
  static final itemmastersAUC = "additional_uom_code";
  static final itemmastersUC = "unit_cost";
  static final itemmastersLDC = "last_direct_cost";
  static final itemmastersUP = "unit_price";
  static final itemmastersUPIV = "unit_price_inc_vat";
  static final itemmastersPIV = "price_includes_vat";
  static final itemmastersB = "blocked";
  static final itemmastersIT = "item_type";
  static final itemmastersS = "status";
  static final itemmastersCB = "created_by";
  static final itemmastersCD = "created_date";
  static final itemmastersUB = "updated_by";
  static final itemmastersUD = "updated_date";
  static final itemmastersVC = "variant_code";
  static final itemmastersID = "id";

//  menus items table

  static final MenuItemsstable = "menuitems";
  static final menuitemsCA = "created_at";
  static final menuitemsUA = "updated_at";
  static final menuitemsNo = "no";
  static final menuitemsd = "description";
  static final menuitemsAD = "arabic_description";
  static final menuitemsABOM = "assembly_bom";
  static final menuitemsBUOM = "base_unit_of_measure";
  static final menuitemsUP = "unit_price";
  static final menuitemsCM = "costing_method";
  static final menuitemsUC = "unit_cost";
  static final menuitemsVN = "vendor_no";
  static final menuitemsVIO = "vendor_item_no";
  static final menuitemsLDM = "last_date_modified";
  static final menuitemsI = "inventory";
  static final menuitemsNS = "no_series";
  static final menuitemsSUM = "sales_unit_of_measure";
  static final menuitemsPUM = "purch_unit_of_measure";
  static final menuitemsICC = "item_category_code";
  static final menuitemsPGC = "product_group_code";
  static final menuitemsBC = "brand_code";
  static final menuitemsDC = "date_created";
  static final menuitemsCBC = "created_by_user";
  static final menuitemsDCC = "division_code";
  static final menuitemsBOM = "bom_method";
  static final menuitemsRVC = "recipe_version_code";
  static final menuitemsRIT = "recipe_item_type";
  static final menuitemsW = "wastage_";
  static final menuitemsIIOR = "included_in_other_recipes";
  static final menuitemsPW = "portion_weight";
  static final menuitemsPC = "portion_cost";
  static final menuitemsEFMR = "exclude_from_menu_requisition";
  static final menuitemsRNP = "recipe_no_of_portions";
  static final menuitemsMMN = "max_modifiers_no_price";
  static final menuitemsMRN = "max_ingr_removed_no_price";
  static final menuitemsM = "max_ingr_modifiers";
  static final menuitemsPT = "production_time_min";
  static final menuitemsDIN = "display_ingredients_in_monitor";
  static final menuitemsDIM = "display_instruct_in_monitor";
  static final menuitemsRMI = "recipe_main_ingredient";
  static final menuitemsRS = "recipe_style";
  static final menuitemsRC = "recipe_category";
  static final menuitemsAVA = "available_as_dish";
  static final menuitemsUPO = "uom_popup_on_pos";
  static final menuitemsUPI = "unit_price_including_vat";
  static final menuitemsWP = "warranty_period";
  static final menuitemsH = "hierarchy";
  static final menuitemsVC = "vat_code";
  static final menuitemsUPA = "unit_price_amount";
  static final menuitemsUPT = "unit_price_without_tax";
  static final menuitemsGA = "gross_amount";
  static final menuitemsDA = "discount_amount";
  static final menuitemsNA = "net_amount";
  static final menuitemsAWT = "amount_without_tax";
  static final menuitemsTA = "tax_amount";
  static final menuitemsPIT = "price_includes_tax";
  static final menuitemsVc = "variant_code";
  static final menuitemsID = "id";
}
