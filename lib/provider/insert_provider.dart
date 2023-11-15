import 'package:flutter/cupertino.dart';
import 'package:hpostables/dbconstants/dbconstants.dart';
import 'package:sqflite/sqflite.dart';

import '../apicallsfile/apicalls.dart';
import '../dbhelper/dbhelper.dart';
import '../models/addonsmodel.dart';
import '../models/discounttypes.dart';
import '../models/tablesetupstatuses.dart';

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


class TableInsertData {
  final String tableName;
  DateTime? insertStartTime;
  DateTime? insertEndTime;
  int? totalRecords;
  double progressData = 0.0;


  TableInsertData(this.tableName);
}

class InsertData extends  ChangeNotifier {
  List<TableInsertData> _tablesData = [];
  bool _isLoading = false;

  List<TableInsertData> get tablesData => _tablesData;

  double _progressPercentage = 0.0;
  double get progressPercentage => _progressPercentage;
  bool get isLoading => _isLoading;

  String _tableNameUpdate = "";
  String get tableNemeUpdate => _tableNameUpdate;

  int _totalTables = 0;
  int get totalTables => _totalTables;

  int _totalRecords = 0;
  int get totalRecords => _totalRecords;

  static List<Addons> _addonslist = [];
  static List<Discounttypes> _discounttypes = [];
  static List<TablesetupStatuses> _tablesetupstatuses = [];
  static List<ReasonMasters> _reasonMasters = [];
  static List<UserTableLinks> _usetTableLinks = [];
  static List<Settings> _settings = [];
  static List<Shift> _shift = [];
  static List<Sections> _sections = [];
  static List<Menuhierarchies> _menuhierarchies = [];
  static List<ItemPrices> _itemprices = [];
  static List<UserTableStatues> _usertablestatuses = [];
  static List<Recipes> _recipes = [];
  static List<KDSMasters> _kdsMasters = [];
  static List<KDSUserLinks> _kdsuserlinks = [];
  static List<ItemModifierDetail> _itemmodifierdetail = [];
  static List<BackOffice> _backoffice = [];
  static List<CostingMethods> _costingMethods = [];
  static List<NumberSeries> _numberseries = [];
  static List<PortionWeights> _portionweights = [];
  static List<PortionCostHierarchies> _portioncostHierarchies = [];
  static List<GuiMenues> _guimenues = [];
  static List<ProductHierarchyLinks> _producthierarchylinks = [];
  static  List<DivisionMasters> _divisionMasters = [];
  static  List<TableFormLinks> _tableformLinks = [];
  static  List<Users> _users = [];
  static  List<TableConfigurators> _tableconfigurators = [];
  static  List<ProductGroupMasters> _productgroupMasters = [];
  static List<CouponHeaders> _couponheaders = [];
  static List<ItemModifierHeader> _itemmodifierheaders = [];
  static List<CouponEntries> _couponentries = [];

  // bool get isLoading => _isLoading;
  // double get progress => _progress;
  // List get addonlist => _addonslist;
  // List get discounttypes => _discounttypes;
  // List get tablesetupstatuses => _tablesetupstatuses;
  // List get reasonMasters => _reasonMasters;
  // List get usetTableLinks => _usetTableLinks;
  // List get settings => _settings;
  // List get shift => _shift;
  // List get sections => _sections;
  // List get menuhierarchies => _menuhierarchies;
  // List get itemprices => _itemprices;
  // List get usertablestatuses => _usertablestatuses;
  // List get recipes => _recipes;
  // List get itemmodifierdetail => _itemmodifierdetail;
  // List get costingMethods => _costingMethods;
  // List get numberseries => _numberseries;
  // List get portionweights => _portionweights;
  // List get portioncostHierarchies => _portioncostHierarchies;
  // List get guimenues => _guimenues;
  // List get producthierarchylinks => _producthierarchylinks;
  // List get divisionMasters => _divisionMasters;
  // List get tableformLinks => _tableformLinks;
  // List get users => _users;
  // List get tableconfigurators => _tableconfigurators;
  // List get productgroupMasters => _productgroupMasters;
  // List get couponheaders => _couponheaders;
  // List get itemmodifierheaders => _itemmodifierheaders;
  // List get couponentries => _couponentries;




  // keep this in order as api calls
  List<Map<String, dynamic>> dataToInsertt = [
    {
      "name": DbConstant.tableName,
      "data": _addonslist,
    },
    {
      "name": DbConstant.DiscountTypesTable,
      "data": _discounttypes,
    },
    {
      "name": DbConstant.TablesetUpstatusesTable,
      "data": _tablesetupstatuses,
    },
    {
      "name": DbConstant.ReasonMastersTable,
      "data": _reasonMasters,
    },
    {
      "name": DbConstant.userTableLinksTable,
      "data":_usetTableLinks,
    },
    {
      "name": DbConstant.SettingsTable,
      "data":_settings,
    },
    {
      "name": DbConstant.ShiftTable,
      "data":_shift,
    },
    {
      "name": DbConstant.SectionsTable,
      "data":_sections,
    },
    {
      "name": DbConstant.MenuHierarchiesTable,
      "data":_menuhierarchies,
    },
    {
      "name": DbConstant.ItemPricesTable,
      "data":_itemprices,
    },
    {
      "name": DbConstant.usertablestatusesTable,
      "data":_usertablestatuses,
    },

    {
      "name": DbConstant.ReciepesTable,
      "data":_recipes,
    },
    {
      "name": DbConstant.KdsMasterstable,
      "data":_kdsMasters,
    },
    {
      "name": DbConstant.KdsUserLinkstable,
      "data":_kdsuserlinks,
    },
    {
      "name": DbConstant.ItemModifierDetailtable,
      "data":_itemmodifierdetail,
    },
    {
      "name": DbConstant.CostingMethodTable,
      "data":_costingMethods,
    },
    {
      "name": DbConstant.NumberSeriesTable,
      "data":_numberseries,
    },
    {
      "name": DbConstant.PortionWeightsTable,
      "data":_portionweights,
    },
    {
      "name": DbConstant.PortionCostHierarchies,
      "data":_portioncostHierarchies,
    },
    {
      "name": DbConstant.GuiMenusesTable,
      "data":_guimenues,
    },
    {
      "name": DbConstant.ProductHierarchyLinkstable,
      "data":_producthierarchylinks,
    },
    {
      "name": DbConstant.DivisionMastersTable,
      "data":_divisionMasters,
    },
    {
      "name": DbConstant.TableformLinkstable,
      "data":_tableformLinks,
    },
    {
      "name": DbConstant.usersTable,
      "data":_users,
    },
    {
      "name": DbConstant.TableConfiguratorsTable,
      "data":_tableconfigurators,
    },
    {
      "name": DbConstant.CouponHeaderTable,
      "data":_couponheaders,
    },
    {
      "name": DbConstant.ProductGroupMasters,
      "data":_productgroupMasters,
    },
    {
      "name": DbConstant.ItemModifierHeadertable,
      "data":_itemmodifierheaders,
    },
    {
      "name": DbConstant.CouponEntiresTable,
      "data":_couponentries,
    },




  ];
  // List<List<dynamic>> datatoInsert = [_addonslist,_discounttypes,_tablesetupstatuses,_reasonMasters,_usetTableLinks,_settings,_shift,_sections,_menuhierarchies];

  Future<void> apiCalls() async {
    _isLoading = true;
    notifyListeners();
    _addonslist = true ? await RestAadpter().getAddons() : [];
    dataToInsertt[0]["data"] = _addonslist;
    //update like this for all the variables after api call

    print("Addons no of Records from API ${_addonslist.length}");
    // await dbhelper.insertAll(DbConstant.tableName, _addonslist);

    // _insertCount = _addonslist.length;
    // _isInserting = false;
    // notifyListeners();

    _discounttypes = true ? await RestAadpter().getDiscounttypes() : [];
    dataToInsertt[1]["data"] = _discounttypes;
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
    dataToInsertt[2]["data"] = _tablesetupstatuses;
    dataToInsertt[3]["data"] = _reasonMasters;
    dataToInsertt[4]["data"] = _usetTableLinks;
    dataToInsertt[5]["data"] = _settings;
    dataToInsertt[6]["data"] = _shift;
    dataToInsertt[7]["data"] = _sections;
    dataToInsertt[8]["data"] = _menuhierarchies;
    dataToInsertt[9]["data"] = _itemprices;
    dataToInsertt[10]["data"] = _usertablestatuses;
    dataToInsertt[11]["data"] = _recipes;
    dataToInsertt[12]["data"] = _kdsMasters;
    dataToInsertt[13]["data"] = _kdsuserlinks;
    dataToInsertt[14]["data"] = _itemmodifierdetail;
    dataToInsertt[15]["data"] = _costingMethods;
    dataToInsertt[16]["data"] = _numberseries;
    dataToInsertt[17]["data"] = _portionweights;
    dataToInsertt[18]["data"] = _portioncostHierarchies;
    dataToInsertt[19]["data"] = _guimenues;
    dataToInsertt[20]["data"] = _producthierarchylinks;
    dataToInsertt[21]["data"] = _divisionMasters;
    dataToInsertt[22]["data"] = _tableformLinks;
    dataToInsertt[23]["data"] = _users;
    dataToInsertt[24]["data"] = _sections;
    dataToInsertt[25]["data"] = _tableconfigurators;
    dataToInsertt[26]["data"] = _productgroupMasters;
    dataToInsertt[27]["data"] = _couponheaders;
    _isLoading = false;
    notifyListeners();
  }

  Future<void> insertData() async {
    int total = dataToInsertt.length;
    double i = 0.01;
    i = (i / total) * 100;
    _progressPercentage = 0.0;
    for (var tableName in dataToInsertt) {
      final tableData = TableInsertData(tableName["name"]);
      tableData.insertStartTime = DateTime.now();
      tableData.totalRecords = tableName["data"].length;
      _tablesData.add(tableData);
      _tableNameUpdate = tableName["name"];
      notifyListeners();

      await _insertTableData(tableName["name"],tableName["data"]);

      tableData.insertEndTime = DateTime.now();
      _totalTables++;
      _progressPercentage = (i / total) * 100;
      i += 0.01;
      tableData.progressData = _progressPercentage;
      print("not working");
      notifyListeners();

    }
  }

  Future<void> _insertTableData(String table, List<dynamic> objects) async {
      _progressPercentage = 0.0;

      _totalRecords = objects.length;
      notifyListeners();
      List<dynamic> listRes = [];
      var res;
      try {
        var _database = await DbHelper.getInstance().database;
        await _database?.transaction((db) async {
          objects.forEach((obj) async {
            try {
              var iRes = await db.insert(table, obj.toMap(),
                  conflictAlgorithm: ConflictAlgorithm.replace);
              listRes.add(iRes);
            } catch (ex) {
              print("--------------------errrr ${ex.toString()}");
            }
          });
        });
        res = listRes;
      } catch (er) {
        print('${er.toString()}');
      }
      return res;
    // Insert data into the specified table
  }

}