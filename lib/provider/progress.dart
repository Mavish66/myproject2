import 'package:flutter/cupertino.dart';
import 'package:hpostables/dbconstants/dbconstants.dart';
import 'package:hpostables/dbhelper/dbhelper.dart';
import 'package:hpostables/dbhelper/dbhelper10.dart';
import 'package:hpostables/dbhelper/dbhelper11.dart';
import 'package:hpostables/dbhelper/dbhelper12.dart';
import 'package:hpostables/dbhelper/dbhelper13.dart';
import 'package:hpostables/dbhelper/dbhelper14.dart';
import 'package:hpostables/dbhelper/dbhelper15.dart';
import 'package:hpostables/dbhelper/dbhelper16.dart';
import 'package:hpostables/dbhelper/dbhelper17.dart';
import 'package:hpostables/dbhelper/dbhelper18.dart';
import 'package:hpostables/dbhelper/dbhelper19.dart';
import 'package:hpostables/dbhelper/dbhelper4.dart';
import 'package:hpostables/dbhelper/dbhelper5.dart';
import 'package:hpostables/dbhelper/dbhelper6.dart';
import 'package:hpostables/dbhelper/dbhelper8.dart';
import 'package:hpostables/dbhelper/dbhelper9.dart';

import '../apicallsfile/apicalls.dart';
import '../dbhelper/dbhelper2.dart';
import '../dbhelper/dbhelper3.dart';
import '../dbhelper/dbhelper7.dart';
import '../models/addonsmodel.dart';
import '../models/backofficemodel.dart';
import '../models/costingmethods.dart';
import '../models/couponentries.dart';
import '../models/couponheaders.dart';
import '../models/discounttypes.dart';
import '../models/divisionmasters.dart';
import '../models/guimenuesmodel.dart';
import '../models/itemmodifierdetail.dart';
import '../models/itemmodifierheader.dart';
import '../models/itempricesmodel.dart';
import '../models/kds_masters.dart';
import '../models/kds_user_links.dart';
import '../models/menuhierarchymodel.dart';
import '../models/numberseriesmodel.dart';
import '../models/portioncosthierarchies.dart';
import '../models/portionweightsmodel.dart';
import '../models/productgroupmasters.dart';
import '../models/producthierarchylinks.dart';
import '../models/reasonmasters.dart';
import '../models/recipesmodel.dart';
import '../models/sectionsmodel.dart';
import '../models/settings.dart';
import '../models/shifmodel.dart';
import '../models/tableconfigurators.dart';
import '../models/tableformlinks.dart';
import '../models/tablesetupstatuses.dart';
import '../models/usersmodel.dart';
import '../models/usertablelinks.dart';
import '../models/usertablestatuses.dart';

class LoadingProvider extends ChangeNotifier {
  DateTime? _beforeInsertionTimestamp;
  DateTime? _afterInsertionTimestamp;
  double _progressPercentage = 0.0;

  List<dynamic> newADDONLIST = [];
  bool _isInserting = false;

  bool get isInserting => _isInserting;

  double get progressPercentage => _progressPercentage;

  DateTime? get beforeInsertionTimestamp => _beforeInsertionTimestamp;
  DateTime? get afterInsertionTimestamp => _afterInsertionTimestamp;

  int _insertCount = 0;
  int _insertCount2 = 0;
  int _insertCount3 = 0;
  int _insertCount4 = 0;
  int _insertCount5 = 0;
  int _insertCount6 = 0;
  int _insertCount7 = 0;
  int _insertCount8 = 0;
  int _insertCount9 = 0;
  int _insertCount10 = 0;
  int _insertCount11 = 0;
  int _insertCount12 = 0;
  int _insertCount13 = 0;
  int _insertCount14 = 0;
  int _insertCount15 = 0;
  int _insertCount16 = 0;
  int _insertCount17 = 0;
  int _insertCount18 = 0;
  int _insertCount19 = 0;
  int _insertCount20 = 0;
  int _insertCount21 = 0;
  int _insertCount22 = 0;
  int _insertCount23 = 0;
  int _insertCount24 = 0;
  int _insertCount25 = 0;
  int _insertCount26 = 0;
  int _insertCount27 = 0;

  final dbhelper = DbHelper();
  final dbhelper2 = DbHelper2();
  final dbhelper3 = DbHelper3();
  final dbhelper4 = DbHelper4();
  final dbhelper5 = DbHelper5();
  final dbhelper6 = DbHelper6();
  final dbhelper7 = DbHelper7();
  final dbhelper8 = DbHelper8();
  final dbhelper9 = DbHelper9();
  final dbhelper10 = DbHelper10();
  final dbhelper11 = DbHelper11();
  final dbhelper12 = DbHelper12();
  final dbhelper13 = DbHelper13();
  final dbhelper14 = DbHelper14();
  final dbhelper15 = DbHelper15();
  final dbhelper16 = DbHelper16();
  final dbhelper17 = DbHelper17();
  final dbhelper18 = DbHelper18();
  final dbhelper19 = DbHelper19();

  bool _isLoading = false;
  double _progress = 0.0;

  int get insertCount => _insertCount;
  int get insertCount2 => _insertCount2;
  int get insertCount3 => _insertCount3;
  int get insertCount4 => _insertCount4;
  int get insertCount5 => _insertCount5;
  int get insertCount6 => _insertCount6;
  int get insertCount7 => _insertCount7;
  int get insertCount8 => _insertCount8;
  int get insertCount9 => _insertCount9;
  int get insertCount10 => _insertCount10;
  int get insertCount11 => _insertCount11;
  int get insertCount12 => _insertCount12;
  int get insertCount13 => _insertCount13;
  int get insertCount14 => _insertCount14;
  int get insertCount15 => _insertCount15;
  int get insertCount16 => _insertCount16;
  int get insertCount17 => _insertCount17;
  int get insertCount18 => _insertCount18;
  int get insertCount19 => _insertCount19;
  int get insertCount20 => _insertCount20;
  int get insertCount21 => _insertCount21;
  int get insertCount22 => _insertCount22;
  int get insertCount23 => _insertCount23;
  int get insertCount24 => _insertCount24;
  int get insertCount25 => _insertCount25;
  int get insertCount26 => _insertCount26;
  int get insertCount27 => _insertCount27;

  var _mylistname = [];
  List<Addons> _addonslist = [];
  List<Discounttypes> _discounttypes = [];
  List<TablesetupStatuses> _tablesetupstatuses = [];
  List<ReasonMasters> _reasonMasters = [];
  List<UserTableLinks> _usetTableLinks = [];
  List<Settings> _settings = [];
  List<Shift> _shift = [];
  List<Sections> _sections = [];
  List<Menuhierarchies> _menuhierarchies = [];
  List<ItemPrices> _itemprices = [];
  List<UserTableStatues> _usertablestatuses = [];
  List<Recipes> _recipes = [];
  List<KDSMasters> _kdsMasters = [];
  List<KDSUserLinks> _kdsuserlinks = [];
  List<ItemModifierDetail> _itemmodifierdetail = [];
  List<BackOffice> _backoffice = [];
  List<CostingMethods> _costingMethods = [];
  List<NumberSeries> _numberseries = [];
  List<PortionWeights> _portionweights = [];
  List<PortionCostHierarchies> _portioncostHierarchies = [];
  List<GuiMenues> _guimenues = [];
  List<ProductHierarchyLinks> _producthierarchylinks = [];
  List<DivisionMasters> _divisionMasters = [];
  List<TableFormLinks> _tableformLinks = [];
  List<Users> _users = [];
  List<TableConfigurators> _tableconfigurators = [];
  List<ProductGroupMasters> _productgroupMasters = [];
  List<CouponHeaders> _couponheaders = [];
  List<ItemModifierHeader> _itemmodifierheaders = [];
  List<CouponEntries> _couponentries = [];

  bool get isLoading => _isLoading;
  double get progress => _progress;
  List get addonlist => _addonslist;
  List get discounttypes => _discounttypes;
  List get tablesetupstatuses => _tablesetupstatuses;
  List get reasonMasters => _reasonMasters;
  List get usetTableLinks => _usetTableLinks;
  List get settings => _settings;
  List get shift => _shift;
  List get sections => _sections;
  List get menuhierarchies => _menuhierarchies;
  List get itemprices => _itemprices;
  List get usertablestatuses => _usertablestatuses;
  List get recipes => _recipes;
  List get itemmodifierdetail => _itemmodifierdetail;
  List get costingMethods => _costingMethods;
  List get numberseries => _numberseries;
  List get portionweights => _portionweights;
  List get portioncostHierarchies => _portioncostHierarchies;
  List get guimenues => _guimenues;
  List get producthierarchylinks => _producthierarchylinks;
  List get divisionMasters => _divisionMasters;
  List get tableformLinks => _tableformLinks;
  List get users => _users;
  List get tableconfigurators => _tableconfigurators;
  List get productgroupMasters => _productgroupMasters;
  List get couponheaders => _couponheaders;
  List get itemmodifierheaders => _itemmodifierheaders;
  List get couponentries => _couponentries;

  void startLoading() async {
    _isInserting = false;

    notifyListeners();
    _isLoading = true;
    _progress = 0.0;

    _addonslist = true ? await RestAadpter().getAddons() : [];
    print("Addons no of Records from API ${_addonslist.length}");
    await dbhelper.insertAll(DbConstant.tableName, _addonslist);

    _insertCount = _addonslist.length;
    // _isInserting = false;
    notifyListeners();

    _discounttypes = true ? await RestAadpter().getDiscounttypes() : [];
    print(_discounttypes.length);

    _tablesetupstatuses = true ? await RestAadpter().getTablesetupstatus() : [];
    print(_tablesetupstatuses.length);

    _reasonMasters = true ? await RestAadpter().getReasonMasters() : [];
    print("Reason Masters no of records from API ${_reasonMasters.length}");

    _usetTableLinks = true ? await RestAadpter().getUserTablelinks() : [];
    print(
        "From User table links no of records from API ${_usetTableLinks.length}");
    _settings = true ? await RestAadpter().getSettings() : [];
    print("Settings no of Records form API ${_settings.length}");
    _shift = true ? await RestAadpter().getShift() : [];
    print("Shift no of Records from API ${_shift.length}");
    _sections = true ? await RestAadpter().getSections() : [];
    print("Sections no of Records from API ${_sections.length}");
    _menuhierarchies = true ? await RestAadpter().getMenuhirarchies() : [];
    print("Menuhirarchies no of Records from API ${_menuhierarchies.length}");
    _itemprices = true ? await RestAadpter().getItemPrices() : [];
    print("Item prices no of Records from API ${_itemprices.length}");
    _usertablestatuses = true ? await RestAadpter().getUserTableStatues() : [];
    print(
        "Usertablestatuses no of Records from API ${_usertablestatuses.length}");
    _recipes = true ? await RestAadpter().getRecipes() : [];
    print("Recipes no of Records from API ${_recipes.length}");
    _kdsMasters = true ? await RestAadpter().getKDSMasters() : [];
    print("KDSMasters no of Records from API ${_kdsMasters.length}");
    _kdsuserlinks = true ? await RestAadpter().getKDSUserLinks() : [];
    print("KDSuserLinks no of Records from API ${_kdsuserlinks.length}");
    _itemmodifierdetail =
        true ? await RestAadpter().getItemModifierDetail() : [];
    print(
        "ItemmodifierDetail no of Records from API ${_itemmodifierdetail.length}");
    // _addons = true ? await RestAadpter().getAddons() : [];
    // print("Addons no of Records from API ${_addons.length}");
    _backoffice = true ? await RestAadpter().getBackOffice() : [];
    print("Backoffice no of Records from API ${_backoffice.length}");

    _costingMethods = true ? await RestAadpter().getCostingMethods() : [];
    print("CostingMethods no of Records from API ${_costingMethods.length}");

    _numberseries = true ? await RestAadpter().getNumberSeries() : [];
    print("NumberSeries no of Records from API ${_numberseries.length}");

    _portionweights = true ? await RestAadpter().getPortionWeights() : [];
    print("PortionWeight no of Records from API ${_portionweights.length}");

    _portioncostHierarchies =
        true ? await RestAadpter().getPortionCostHierarchies() : [];
    print(
        "PortionCostHierarchies no of Records from API ${_portioncostHierarchies.length}");

    _guimenues = true ? await RestAadpter().getGuiMenues() : [];
    print("GuiMenues no of Records from API ${_guimenues.length}");

    _producthierarchylinks =
        true ? await RestAadpter().getProductHierarchyLinks() : [];
    print(
        "ProductHierarchyLinks no of Records from API ${_producthierarchylinks.length}");

    _divisionMasters = true ? await RestAadpter().getDivisionMasters() : [];
    print("DivisionMasters no of Records from API ${_divisionMasters.length}");

    _tableformLinks = true ? await RestAadpter().getTableFormLinks() : [];
    print("TableFormLinks no of records API ${_tableformLinks.length}");

    _users = true ? await RestAadpter().getUsers() : [];
    print("Users no of records API ${_users.length}");

    _tableconfigurators =
        true ? await RestAadpter().getTableConfigurators() : [];
    print("TableConfigurators no of Records API ${_tableconfigurators.length}");

    _productgroupMasters =
        true ? await RestAadpter().getProductGroupMasters() : [];
    print(
        "ProductGroupMasters no of Records API ${_productgroupMasters.length}");

    _couponheaders = true ? await RestAadpter().getCouponHeaders() : [];
    print("CouponHeaders no fo Records API ${_couponheaders.length}");

    _itemmodifierheaders =
        true ? await RestAadpter().getItemModifierHeader() : [];
    print(
        "ItemModifierHeaders no of Records from API ${_itemmodifierheaders.length}");

    _couponentries = true ? await RestAadpter().getCouponEntries() : [];
    print("CouponEntried no of Records from API ${_couponentries.length}");

    print(" DATA Insertion starts from here....");

    _beforeInsertionTimestamp = DateTime.now();
    notifyListeners();

    // await dbhelper.insertAll(DbConstant.tableName, _addonslist);
    // _insertCount = _addonslist.length;
    await DbHelper17()
        .insertAll17(DbConstant.DiscountTypesTable, _discounttypes);


    await DbHelper11()
        .insertAllDb11(DbConstant.TablesetUpstatusesTable, _tablesetupstatuses);

    await DbHelper9()
        .insertAllDb9(DbConstant.ReasonMastersTable, _reasonMasters);
    await DbHelper6()
        .insertAllDb6(DbConstant.userTableLinksTable, _usetTableLinks);

    await DbHelper5().insertAllDb5(DbConstant.ShiftTable, _shift);
    await DbHelper4().insertAllDb4(DbConstant.SectionsTable, _sections);
    await DbHelper3()
        .insertAllDb3(DbConstant.MenuHierarchiesTable, _menuhierarchies);
    await DbHelper15().insertAllDb15(DbConstant.ItemPricesTable, _itemprices);
    await DbHelper5()
        .insertAllDb5(DbConstant.usertablestatusesTable, _usertablestatuses);

    await DbHelper2().insertAllDb2(DbConstant.ReciepesTable, _recipes);
    await DbHelper2().insertAllDb2(DbConstant.KdsMasterstable, _kdsMasters);
    await DbHelper().insertAll(DbConstant.BackOfficeTable, _backoffice);
    await DbHelper15()
        .insertAllDb15(DbConstant.CostingMethodTable, _costingMethods);
    await DbHelper3().insertAllDb3(DbConstant.NumberSeriesTable, _numberseries);
    await DbHelper7()
        .insertAllDb7(DbConstant.PortionWeightsTable, _portionweights);
    await DbHelper7().insertAllDb7(
        DbConstant.PortionCostHierarchies, _portioncostHierarchies);

    await DbHelper18().insertAllDb18(DbConstant.GuiMenusesTable, _guimenues);

    await DbHelper8().insertAllDb8(
        DbConstant.ProductHierarchyLinkstable, _producthierarchylinks);

    await DbHelper17()
        .insertAll17(DbConstant.DivisionMastersTable, _divisionMasters);

    await DbHelper11()
        .insertAllDb11(DbConstant.TableformLinkstable, _tableformLinks);

    await DbHelper5().insertAllDb5(DbConstant.usersTable, _users);

    await DbHelper10()
        .insertAllDb10(DbConstant.TableConfiguratorsTable, _tableconfigurators);

    await DbHelper8()
        .insertAllDb8(DbConstant.ProductGroupMasters, _productgroupMasters);

    await DbHelper16()
        .insertAllDb16(DbConstant.CouponHeaderTable, _couponheaders);

    await DbHelper14().insertAllDb14(
        DbConstant.ItemModifierHeadertable, _itemmodifierheaders);

    await DbHelper16()
        .insertAllDb16(DbConstant.CouponEntiresTable, _couponentries);

    await DbHelper4()
        .insertAllDb4(DbConstant.ItemModifierDetailtable, _itemmodifierdetail);

    await DbHelper4().insertAllDb4(DbConstant.SettingsTable, _settings);

    print("Insertion ends here....");

    _afterInsertionTimestamp = DateTime.now();
    notifyListeners();

    _isInserting = false;

    _insertCount = _addonslist.length;
    _insertCount2 = _discounttypes.length;
    notifyListeners();
    _insertCount3 = _tablesetupstatuses.length;
    _insertCount4 = _reasonMasters.length;
    _insertCount5 = _usetTableLinks.length;
    _insertCount6 = _shift.length;
    _insertCount7 = _sections.length;
    _insertCount8 = _menuhierarchies.length;
    _insertCount9 = _itemprices.length;
    _insertCount10 = _usertablestatuses.length;
    _insertCount11 = _recipes.length;
    _insertCount12 = _itemmodifierdetail.length;
    _insertCount13 = _costingMethods.length;
    _insertCount14 = _numberseries.length;
    _insertCount15 = _portionweights.length;
    _insertCount17 = _portioncostHierarchies.length;
    _insertCount18 = _guimenues.length;
    _insertCount19 = _producthierarchylinks.length;
    _insertCount20 = _divisionMasters.length;
    _insertCount21 = _tableformLinks.length;
    _insertCount22 = _users.length;
    _insertCount23 = _tableconfigurators.length;
    _insertCount24 = _productgroupMasters.length;
    _insertCount25 = _couponheaders.length;
    _insertCount26 = _itemmodifierheaders.length;
    _insertCount27 = _couponentries.length;


    // stopLoading();
    // notifyListeners();
  }







  void showPercentage(){
    for(int i=0; i<20; i++){

    }

  }





  void updateProgress(double value) {
    _progress = value;
    notifyListeners();
  }

  void stopLoading() {
    _isLoading = false;
    _progress = 0.0;
    notifyListeners();
  }
}
