import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hpostables/apicallsfile/apicalls.dart';
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
import 'package:hpostables/dbhelper/dbhelper2.dart';
import 'package:hpostables/dbhelper/dbhelper20.dart';
import 'package:hpostables/dbhelper/dbhelper3.dart';
import 'package:hpostables/dbhelper/dbhelper4.dart';
import 'package:hpostables/dbhelper/dbhelper5.dart';
import 'package:hpostables/dbhelper/dbhelper6.dart';
import 'package:hpostables/dbhelper/dbhelper7.dart';
import 'package:hpostables/dbhelper/dbhelper8.dart';
import 'package:hpostables/dbhelper/dbhelper9.dart';
import 'package:hpostables/models/addonsmodel.dart';
import 'package:hpostables/models/backofficemodel.dart';
import 'package:hpostables/models/costingmethods.dart';
import 'package:hpostables/models/itemmodifierdetail.dart';
import 'package:hpostables/models/kds_masters.dart';
import 'package:hpostables/models/kds_user_links.dart';
import 'package:hpostables/models/menuhierarchymodel.dart';
import 'package:hpostables/models/numberseriesmodel.dart';
import 'package:hpostables/models/portionweightsmodel.dart';
import 'package:hpostables/models/reasonmasters.dart';
import 'package:hpostables/models/recipesmodel.dart';
import 'package:hpostables/models/sectionsmodel.dart';
import 'package:hpostables/models/settings.dart';
import 'package:hpostables/models/tablesetupstatuses.dart';
import 'package:hpostables/models/usertablelinks.dart';
import 'package:hpostables/models/usertablestatuses.dart';
import 'package:hpostables/screen/new_home.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'package:provider/provider.dart';
import 'package:sqflite/sqflite.dart';

import '../dbconstants/dbconstants.dart';
import '../models/couponentries.dart';
import '../models/couponheaders.dart';
import '../models/discounttypes.dart';
import '../models/divisionmasters.dart';
import '../models/guimenuesmodel.dart';
import '../models/itemmodifierheader.dart';
import '../models/itempricesmodel.dart';
import '../models/portioncosthierarchies.dart';
import '../models/productgroupmasters.dart';
import '../models/producthierarchylinks.dart';
import '../models/shifmodel.dart';
import '../models/tableconfigurators.dart';
import '../models/tableformlinks.dart';
import '../models/usersmodel.dart';
import '../provider/progress.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  DateTime now = DateTime.now();
  // final dbHelper = DbHelper();

  List<Map<String, dynamic>> _tablesetupstausFromDB = [];
  List<Map<String, dynamic>> _discountfromDB = [];
  List<Map<String, dynamic>> _reasonMasterfromDB = [];
  List<Map<String, dynamic>> _userTableLinksfromDB = [];
  List<Map<String, dynamic>> _settingsFromDB = [];
  List<Map<String, dynamic>> _shiftFromDB = [];
  List<Map<String, dynamic>> _sectionsFromDb = [];
  List<Map<String, dynamic>> _menuhierarchiesFromDB = [];
  List<Map<String, dynamic>> _itempricesFromDb = [];
  List<Map<String, dynamic>> _usertablestatuesFromDB = [];
  List<Map<String, dynamic>> _recipesFromDB = [];
  List<Map<String, dynamic>> _kdsMastersFromDB = [];
  List<Map<String, dynamic>> _kdsuserlinksFromDB = [];
  List<Map<String, dynamic>> _itemmodifierdetailFromDB = [];
  // List<Map<String, dynamic>> _addonsFromDB = [];
  List<Map<String, dynamic>> _backofficeFromDB = [];
  List<Map<String, dynamic>> _costingMethodsFromDB = [];
  List<Map<String, dynamic>> _numberseriesFromDB = [];
  List<Map<String, dynamic>> _portionWeightFromDB = [];
  List<Map<String, dynamic>> _portioncostHierarchiesDB = [];
  List<Map<String, dynamic>> _guimenuesDB = [];
  List<Map<String, dynamic>> _producthierarchylinksDB = [];
  List<Map<String, dynamic>> _divisionMastersDB = [];
  List<Map<String, dynamic>> _tableformLinksDB = [];
  List<Map<String, dynamic>> _usersDB = [];
  List<Map<String, dynamic>> _tableconfiguratorsDB = [];
  List<Map<String, dynamic>> _productgroupMastersDB = [];
  List<Map<String, dynamic>> _couponheadersDB = [];
  List<Map<String, dynamic>> _itemmodifierheaderDB = [];
  List<Map<String, dynamic>> _couponentriesDB = [];

  @override
  void initState() {
    dbinertForAllTables();
    tocheckLength();
    print(_itempricesFromDb.length);

    print("--- starts here ---");
    super.initState();
  }

  Future<void> getdata() async {
    _tablesetupstausFromDB = (await DbHelper11().getTableStatuses())!;
    print(
        "From Table setup statues Db no of Records ${_tablesetupstausFromDB.length}");
    _reasonMasterfromDB = (await DbHelper9().getReasonMasterDB())!;
    print("From Reason Masters Db no of Records ${_reasonMasterfromDB.length}");
    _discountfromDB = (await DbHelper17().getDiscountType())!;
    print("From DiscountType Db no of Records ${_discountfromDB.length}");
    _userTableLinksfromDB = (await DbHelper6().getUserTablelinksDB())!;
    print(
        "From UserTablesLinks Db no of Records ${_userTableLinksfromDB.length}");
    _settingsFromDB = (await DbHelper4().getSettingsDb())!;
    print("From settings Db no of Records ${_settingsFromDB.length}");
    _shiftFromDB = (await DbHelper5().getshiftDB())!;
    print("From shift Db no of Records ${_shiftFromDB.length}");
    _sectionsFromDb = (await DbHelper4().getSectionsDb())!;
    print("From sections Db no of Records ${_sectionsFromDb.length}");
    _menuhierarchiesFromDB = (await DbHelper3().getMenuhierarchiesDB())!;
    print(
        "From Menuhierarchies Db no of Records ${_menuhierarchiesFromDB.length}");
    _itempricesFromDb = (await DbHelper15().getItempricesDB())!;
    print("From Itemprices Db no of Records ${_itempricesFromDb.length}");
    _usertablestatuesFromDB = (await DbHelper5().getUserTableStatuesDB())!;
    print(
        "From Usertablestatuses Db no of Records ${_usertablestatuesFromDB.length}");
    _recipesFromDB = (await DbHelper2().getRecipesDB())!;
    print("From Recipes Db no of Records ${_recipesFromDB.length}");
    // _kdsMastersFromDB = (await DbHelper2().getKDSMastersDB())!;
    // print("From KDSMasters Db no of records ${_kdsMastersFromDB.length}");
    // _kdsuserlinksFromDB = (await DbHelper2().getKDSUserLinksDB())!;
    // print("From KDSUserLinks Db no of records ${_kdsuserlinksFromDB.length}");
    // _itemmodifierdetailFromDB = (await DbHelper4().getItemModifierdetailDb())!;
    // print(
    //     "From ItemModifierdetail Db no of records ${_itemmodifierdetailFromDB.length}");

    _numberseriesFromDB = (await DbHelper3().getNumberSeriesDB())!;
    print("From Numberseries Db no of records ${_numberseriesFromDB.length}");

    // _addonsFromDB = (await DbHelper().getAddonsDB())!;
    // print("From Addons Db no of Records ${_addonsFromDB.length}");
    _backofficeFromDB = (await DbHelper().getBackofficeDB())!;
    print("From Backoffice Db no of Records ${_backofficeFromDB.length}");

    _costingMethodsFromDB = (await DbHelper15().getCostingMethodDB())!;
    print(
        "From CostingMethods Db no of Records ${_costingMethodsFromDB.length}");

    _portionWeightFromDB = (await DbHelper7().getPortionWeightDB())!;
    print(
        "From PortionWeights Db no of Records ${_portionWeightFromDB.length}");

    _portioncostHierarchiesDB =
        (await DbHelper7().getPortionCostHierarchiesDB())!;
    print(
        "From PortionCostHierarfchies DB no of Records ${_portioncostHierarchiesDB.length}");

    _guimenuesDB = (await DbHelper18().getGUIMenusDB())!;
    print("From GuiMenus DB no of Records ${_guimenuesDB.length}");

    _producthierarchylinksDB =
        (await DbHelper8().getProductHierarchyLinksDB())!;
    print(
        "From  ProductHierarchyLinks DB no of Records ${_producthierarchylinksDB.length}");

    _divisionMastersDB = (await DbHelper17().getDivisionMastersDB())!;
    print("From DivisionMasters Db no of Records ${_divisionMastersDB.length}");

    _tableformLinksDB = (await DbHelper11().getTableFormLinksDB())!;
    print("From TableFormLinks Db no of Records ${_tableformLinksDB.length}");

    _usersDB = (await DbHelper5().getUsersDB())!;
    print("From Users Db no records ${_usersDB.length}");

    _tableconfiguratorsDB = (await DbHelper10().getTableConfiguratorsDB())!;
    print(
        "From TableConfigurators Db no of Records ${_tableconfiguratorsDB.length}");

    _productgroupMastersDB = (await DbHelper8().getProductGroupMastersDB())!;
    print(
        "From ProductGoupMasters Db no of Records ${_productgroupMastersDB.length}");

    _couponheadersDB = (await DbHelper16().getCouponHeadersDB())!;
    print("From CouponHeaders Db no of Records ${_couponheadersDB.length}");

    _itemmodifierheaderDB = (await DbHelper14().getItemModifierHeaderDB())!;
    print("From ItemHeaders Db no of Records ${_itemmodifierheaderDB.length}");

    _couponentriesDB = (await DbHelper16().getCouponEntriesDB())!;
    print("From CouponEntries Db no of Records ${_couponentriesDB.length}");

    setState(() {});
  }

  tocheckLength() {
    for (int i = 0; i < _itempricesFromDb.length; i++) {
      print(_itempricesFromDb.length);
    }
    setState(() {});
  }

  dbinertForAllTables() async {
    await tableWise();
    // await getdata();
  }

  tableWise() async {
    Database? db;
    await DbHelper.getInstance().initDb();
    await DbHelper2.getInstance().initDb2();
    await DbHelper3.getInstance().initDb3();
    await DbHelper4.getInstance().initDb4();
    await DbHelper5.getInstance().initDb5();
    await DbHelper6.getInstance().initDb6();
    await DbHelper7.getInstance().initDb7();
    await DbHelper8.getInstance().initDb8();
    await DbHelper9.getInstance().initDb9();
    await DbHelper10.getInstance().initDb10();
    await DbHelper11.getInstance().initDb11();
    await DbHelper12.getInstance().initDb12();
    await DbHelper13.getInstance().initDb13();
    await DbHelper14.getInstance().initDb14();
    await DbHelper15.getInstance().initDb15();
    await DbHelper16.getInstance().initDb16();
    await DbHelper17.getInstance().initDb17();
    await DbHelper18.getInstance().initDb18();
    await DbHelper19.getInstance().initDb19();
    // await DbHelper20.getInstance().initDb20();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark(),
      home: Scaffold(
          appBar: AppBar(
              // title: Text("Data Insertion"),
              ),
          body: Center(
            // child: Container(
            //   child: SingleChildScrollView(
            //     scrollDirection: Axis.vertical,
            //     child: Column(
            //       // mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         ElevatedButton(
            //           onPressed: () {
            //             final dataInsertion =
            //                 Provider.of<LoadingProvider>(context, listen: false);
            //             dataInsertion.startLoading();
            //
            //             //  LoadingProvider().startLoading();
            //             // LoadingProvider().checklength();
            //             print("Data fetching starte here....");
            //           },
            //           child: Text("Insert data here"),
            //         ),
            //         Consumer<LoadingProvider>(
            //           builder: (context, state, _) {
            //             if (state.isInserting) {
            //               return Column(
            //                 children: [
            //                   LinearProgressIndicator(
            //                     backgroundColor: Colors.red,
            //                     value: state.progressPercentage,
            //                   ),
            //                   Align(
            //                     alignment: Alignment.center,
            //                     child: Text(
            //                       '${(state.progressPercentage * 100).toStringAsFixed(2)}%',
            //                       style: TextStyle(
            //                         color: Colors.white,
            //                         fontWeight: FontWeight.bold,
            //                       ),
            //                     ),
            //                   ),
            //                   SizedBox(height: 10),
            //                   Text('Inserting data...'),
            //                   // Text('Addons Data inserted: ${state.insertCount} records'),
            //                 ],
            //               );
            //             } else if (state.insertCount > 0 ) {
            //               return Column(
            //                 children: [
            //                   SizedBox(
            //                     height: 10,
            //                   ),
            //                   Row(
            //                     mainAxisAlignment: MainAxisAlignment.center,
            //                     children: [
            //                       Text(
            //                           "Start time: ${state.beforeInsertionTimestamp.toString()} "),
            //                     if(state.beforeInsertionTimestamp != null)
            //                       Icon(
            //                         Icons.check_circle,
            //                         color: Colors.green,
            //                       )
            //                       else if(state.beforeInsertionTimestamp == null)
            //                       Icon(
            //                         Icons.cancel,
            //                         color: Colors.grey,
            //                       ),
            //                     ],
            //                   ),
            //                   SizedBox(
            //                     height: 10,
            //                   ),
            //                   Row(
            //                     mainAxisAlignment: MainAxisAlignment.center,
            //                     children: [
            //                       Text('Addons Data inserted: ${state.insertCount} records'),
            //                       if (state.insertCount > 1)
            //                         Icon(
            //                           Icons.check_circle,
            //                           color: Colors.green,
            //                         )
            //                       else if (state.insertCount < 1)
            //                         Icon(
            //                           Icons.cancel,
            //                           color: Colors.grey,
            //                         ),
            //                     ],
            //                   ),
            //
            //                   SizedBox(
            //                     height: 10,
            //                   ),
            //                   Row(
            //                     mainAxisAlignment: MainAxisAlignment.center,
            //                     children: [
            //                       Text(
            //                           "Discount types inserted: ${state.insertCount2} records"),
            //                       if (state.insertCount2 > 1)
            //                         Icon(
            //                           Icons.check_circle,
            //                           color: Colors.green,
            //                         )
            //                       else if (state.insertCount2 < 1)
            //                         Icon(
            //                           Icons.cancel,
            //                           color: Colors.grey,
            //                         ),
            //                     ],
            //                   ),
            //                   SizedBox(
            //                     height: 10,
            //                   ),
            //                   Row(
            //                     mainAxisAlignment: MainAxisAlignment.center,
            //                     children: [
            //                       Text(
            //                           "TableSetupStatuses inserted: ${state.insertCount3} records"),
            //                       if (state.insertCount3 > 1)
            //                         Icon(
            //                           Icons.check_circle,
            //                           color: Colors.green,
            //                         )
            //                       else if (state.insertCount3 < 1)
            //                         Icon(
            //                           Icons.cancel,
            //                           color: Colors.grey,
            //                         ),
            //                     ],
            //                   ),
            //                   SizedBox(
            //                     height: 10,
            //                   ),
            //                   Row(
            //                     mainAxisAlignment: MainAxisAlignment.center,
            //                     children: [
            //                       Text(
            //                           "ReasonMasters inserted: ${state.insertCount4} records"),
            //                       if (state.insertCount4 > 1)
            //                         Icon(
            //                           Icons.check_circle,
            //                           color: Colors.green,
            //                         )
            //                       else if (state.insertCount4 < 1)
            //                         Icon(
            //                           Icons.cancel,
            //                           color: Colors.grey,
            //                         ),
            //                     ],
            //                   ),
            //                   SizedBox(
            //                     height: 10,
            //                   ),
            //                   Row(
            //                     mainAxisAlignment: MainAxisAlignment.center,
            //                     children: [
            //                       Text(
            //                           "UserTableLinks inserted: ${state.insertCount5} records"),
            //                       if (state.insertCount5 > 1)
            //                         Icon(
            //                           Icons.check_circle,
            //                           color: Colors.green,
            //                         )
            //                       else if (state.insertCount5 < 1)
            //                         Icon(
            //                           Icons.cancel,
            //                           color: Colors.grey,
            //                         ),
            //                     ],
            //                   ),
            //                   SizedBox(
            //                     height: 10,
            //                   ),
            //                   Row(
            //                     mainAxisAlignment: MainAxisAlignment.center,
            //                     children: [
            //                       Text(
            //                           "Shift table inserted: ${state.insertCount6} records"),
            //                       if (state.insertCount6 > 1)
            //                         Icon(
            //                           Icons.check_circle,
            //                           color: Colors.green,
            //                         )
            //                       else if (state.insertCount6 < 1)
            //                         Icon(
            //                           Icons.cancel,
            //                           color: Colors.grey,
            //                         ),
            //                     ],
            //                   ),
            //                   SizedBox(
            //                     height: 10,
            //                   ),
            //                   Row(
            //                     mainAxisAlignment: MainAxisAlignment.center,
            //                     children: [
            //                       Text(
            //                           "Sections table inserted: ${state.insertCount7} records"),
            //                       if (state.insertCount7 > 1)
            //                         Icon(
            //                           Icons.check_circle,
            //                           color: Colors.green,
            //                         )
            //                       else if (state.insertCount7 < 1)
            //                         Icon(
            //                           Icons.cancel,
            //                           color: Colors.grey,
            //                         ),
            //                     ],
            //                   ),
            //                   SizedBox(
            //                     height: 10,
            //                   ),
            //                   Row(
            //                     mainAxisAlignment: MainAxisAlignment.center,
            //                     children: [
            //                       Text(
            //                           "MenuHierarchies table inserted: ${state.insertCount8} records"),
            //                       if (state.insertCount8 > 1)
            //                         Icon(
            //                           Icons.check_circle,
            //                           color: Colors.green,
            //                         )
            //                       else if (state.insertCount8 < 1)
            //                         Icon(
            //                           Icons.cancel,
            //                           color: Colors.grey,
            //                         ),
            //                     ],
            //                   ),
            //                   SizedBox(
            //                     height: 10,
            //                   ),
            //                   Row(
            //                     mainAxisAlignment: MainAxisAlignment.center,
            //                     children: [
            //                       Text("ItemPrices table inserted: ${state.insertCount9} records"),
            //                       if (state.insertCount9 > 1)
            //                         Icon(
            //                           Icons.check_circle,
            //                           color: Colors.green,
            //                         )
            //                       else if (state.insertCount9 < 1)
            //                         Icon(
            //                           Icons.cancel,
            //                           color: Colors.grey,
            //                         ),
            //                     ],
            //                   ),
            //
            //                   SizedBox(
            //                     height: 10,
            //                   ),
            //                   Row(
            //                     mainAxisAlignment: MainAxisAlignment.center,
            //                     children: [
            //                       Text(
            //                           "UserTablesStatues table inserted: ${state.insertCount10} records"),
            //                       if (state.insertCount10 > 1)
            //                         Icon(
            //                           Icons.check_circle,
            //                           color: Colors.green,
            //                         )
            //                       else if (state.insertCount10 < 1)
            //                         Icon(
            //                           Icons.cancel,
            //                           color: Colors.grey,
            //                         ),
            //                     ],
            //                   ),
            //                   SizedBox(
            //                     height: 10,
            //                   ),
            //
            //
            //                   Row(
            //                     mainAxisAlignment: MainAxisAlignment.center,
            //                     children: [
            //                       Text(
            //                           "Recipes table inserted: ${state.insertCount11} records"),
            //                       if (state.insertCount11 > 1)
            //                         Icon(
            //                           Icons.check_circle,
            //                           color: Colors.green,
            //                         )
            //                       else if (state.insertCount11 < 1)
            //                         Icon(
            //                           Icons.cancel,
            //                           color: Colors.grey,
            //                         ),
            //                     ],
            //                   ),
            //
            //                   SizedBox(
            //                     height: 10,
            //                   ),
            //
            //                   Row(
            //                     mainAxisAlignment: MainAxisAlignment.center,
            //                     children: [
            //                       Text('ItemModifierDetail table inserted: ${state.insertCount12} records'),
            //                       if (state.insertCount12 > 1)
            //                         Icon(
            //                           Icons.check_circle,
            //                           color: Colors.green,
            //                         )
            //                       else if (state.insertCount12 < 1)
            //                         Icon(
            //                           Icons.cancel,
            //                           color: Colors.grey,
            //                         ),
            //                     ],
            //                   ),
            //
            //                   SizedBox(
            //                     height: 10,
            //                   ),
            //                   Row(
            //                     mainAxisAlignment: MainAxisAlignment.center,
            //                     children: [
            //                       Text('CostingMethods table inserted: ${state.insertCount13} records'),
            //                       if (state.insertCount13 > 1)
            //                         Icon(
            //                           Icons.check_circle,
            //                           color: Colors.green,
            //                         )
            //                       else if (state.insertCount13 < 1)
            //                         Icon(
            //                           Icons.cancel,
            //                           color: Colors.grey,
            //                         ),
            //                     ],
            //                   ),
            //
            //                   SizedBox(
            //                     height: 10,
            //                   ),
            //
            //                   Row(
            //                     mainAxisAlignment: MainAxisAlignment.center,
            //                     children: [
            //                       Text('NumberSeries table inserted: ${state.insertCount14} records'),
            //                       if (state.insertCount14 > 1)
            //                         Icon(
            //                           Icons.check_circle,
            //                           color: Colors.green,
            //                         )
            //                       else if (state.insertCount14 < 1)
            //                         Icon(
            //                           Icons.cancel,
            //                           color: Colors.grey,
            //                         ),
            //                     ],
            //                   ),
            //
            //
            //                   SizedBox(
            //                     height: 10,
            //                   ),
            //
            //
            //
            //                   Row(
            //                     mainAxisAlignment: MainAxisAlignment.center,
            //                     children: [
            //                       Text('PortionWeights table inserted: ${state.insertCount15} records'),
            //                       if (state.insertCount15 > 1)
            //                         Icon(
            //                           Icons.check_circle,
            //                           color: Colors.green,
            //                         )
            //                       else if (state.insertCount15 < 1)
            //                         Icon(
            //                           Icons.cancel,
            //                           color: Colors.grey,
            //                         ),
            //                     ],
            //                   ),
            //
            //
            //
            //                   SizedBox(
            //                     height: 10,
            //                   ),
            //
            //                   Row(
            //                     mainAxisAlignment: MainAxisAlignment.center,
            //                     children: [
            //                       Text('PortionCostHierarchies table inserted: ${state.insertCount17} records'),
            //                       if (state.insertCount17 > 1)
            //                         Icon(
            //                           Icons.check_circle,
            //                           color: Colors.green,
            //                         )
            //                       else if (state.insertCount17 < 1)
            //                         Icon(
            //                           Icons.cancel,
            //                           color: Colors.grey,
            //                         ),
            //                     ],
            //                   ),
            //
            //                   SizedBox(
            //                     height: 10,
            //                   ),
            //
            //
            //                   Row(
            //                     mainAxisAlignment: MainAxisAlignment.center,
            //                     children: [
            //                       Text('GuiMenues table inserted: ${state.insertCount18} records'),
            //                       if (state.insertCount18 > 1)
            //                         Icon(
            //                           Icons.check_circle,
            //                           color: Colors.green,
            //                         )
            //                       else if (state.insertCount18 < 1)
            //                         Icon(
            //                           Icons.cancel,
            //                           color: Colors.grey,
            //                         ),
            //                     ],
            //                   ),
            //
            //                   SizedBox(
            //                     height: 10,
            //                   ),
            //
            //                   Row(
            //                     mainAxisAlignment: MainAxisAlignment.center,
            //                     children: [
            //                       Text('ProductHierarchyLinks table inserted: ${state.insertCount19} records'),
            //                       if (state.insertCount19 > 1)
            //                         Icon(
            //                           Icons.check_circle,
            //                           color: Colors.green,
            //                         )
            //                       else if (state.insertCount19 < 1)
            //                         Icon(
            //                           Icons.cancel,
            //                           color: Colors.grey,
            //                         ),
            //                     ],
            //                   ),
            //
            //                   SizedBox(
            //                     height: 10,
            //                   ),
            //
            //                   Row(
            //                     mainAxisAlignment: MainAxisAlignment.center,
            //                     children: [
            //                       Text('DivisionMasters table inserted: ${state.insertCount20} records'),
            //                       if (state.insertCount20 > 1)
            //                         Icon(
            //                           Icons.check_circle,
            //                           color: Colors.green,
            //                         )
            //                       else if (state.insertCount20 < 1)
            //                         Icon(
            //                           Icons.cancel,
            //                           color: Colors.grey,
            //                         ),
            //                     ],
            //                   ),
            //
            //                   SizedBox(
            //                     height: 10,
            //                   ),
            //
            //                   Row(
            //                     mainAxisAlignment: MainAxisAlignment.center,
            //                     children: [
            //                       Text('TableFormLinks table inserted: ${state.insertCount21} records'),
            //                       if (state.insertCount21 > 1)
            //                         Icon(
            //                           Icons.check_circle,
            //                           color: Colors.green,
            //                         )
            //                       else if (state.insertCount21 < 1)
            //                         Icon(
            //                           Icons.cancel,
            //                           color: Colors.grey,
            //                         ),
            //                     ],
            //                   ),
            //
            //
            //
            //                   SizedBox(
            //                     height: 10,
            //                   ),
            //
            //
            //
            //                   Row(
            //                     mainAxisAlignment: MainAxisAlignment.center,
            //                     children: [
            //                       Text('Users table inserted: ${state.insertCount22} records'),
            //                       if (state.insertCount22 > 1)
            //                         Icon(
            //                           Icons.check_circle,
            //                           color: Colors.green,
            //                         )
            //                       else if (state.insertCount22 < 1)
            //                         Icon(
            //                           Icons.cancel,
            //                           color: Colors.grey,
            //                         ),
            //                     ],
            //                   ),
            //
            //
            //                   SizedBox(
            //                     height: 10,
            //                   ),
            //
            //
            //                   Row(
            //                     mainAxisAlignment: MainAxisAlignment.center,
            //                     children: [
            //                       Text('TableConfigurators table inserted: ${state.insertCount23} records'),
            //                       if (state.insertCount23 > 1)
            //                         Icon(
            //                           Icons.check_circle,
            //                           color: Colors.green,
            //                         )
            //                       else if (state.insertCount23 < 1)
            //                         Icon(
            //                           Icons.cancel,
            //                           color: Colors.grey,
            //                         ),
            //                     ],
            //                   ),
            //
            //                   SizedBox(
            //                     height: 10,
            //                   ),
            //
            //                   Row(
            //                     mainAxisAlignment: MainAxisAlignment.center,
            //                     children: [
            //                       Text('ProductGroupMasters table inserted: ${state.insertCount24} records'),
            //                       if (state.insertCount24 > 1)
            //                         Icon(
            //                           Icons.check_circle,
            //                           color: Colors.green,
            //                         )
            //                       else if (state.insertCount24 < 1)
            //                         Icon(
            //                           Icons.cancel,
            //                           color: Colors.grey,
            //                         ),
            //                     ],
            //                   ),
            //
            //
            //                   SizedBox(
            //                     height: 10,
            //                   ),
            //
            //
            //                   Row(
            //                     mainAxisAlignment: MainAxisAlignment.center,
            //                     children: [
            //                       Text('CouponHeaders table inserted: ${state.insertCount25} records'),
            //                       if (state.insertCount25 > 1)
            //                         Icon(
            //                           Icons.check_circle,
            //                           color: Colors.green,
            //                         )
            //                       else if (state.insertCount25 < 1)
            //                         Icon(
            //                           Icons.cancel,
            //                           color: Colors.grey,
            //                         ),
            //                     ],
            //                   ),
            //
            //                   SizedBox(
            //                     height: 10,
            //                   ),
            //
            //
            //                   Row(
            //                     mainAxisAlignment: MainAxisAlignment.center,
            //                     children: [
            //                       Text('ItemModifierHeaders table inserted: ${state.insertCount26} records'),
            //                       if (state.insertCount26 > 1)
            //                         Icon(
            //                           Icons.check_circle,
            //                           color: Colors.green,
            //                         )
            //                       else if (state.insertCount26 < 1)
            //                         Icon(
            //                           Icons.cancel,
            //                           color: Colors.grey,
            //                         ),
            //                     ],
            //                   ),
            //
            //
            //                   SizedBox(
            //                     height: 10,
            //                   ),
            //
            //                   Row(
            //                     mainAxisAlignment: MainAxisAlignment.center,
            //                     children: [
            //                       Text('CouponEntries table inserted: ${state.insertCount27} records'),
            //                       if (state.insertCount27 > 1)
            //                         Icon(
            //                           Icons.check_circle,
            //                           color: Colors.green,
            //                         )
            //                       else if (state.insertCount27 < 1)
            //                         Icon(
            //                           Icons.cancel,
            //                           color: Colors.grey,
            //                         ),
            //                     ],
            //                   ),
            //
            //
            //
            //                   SizedBox(
            //                     height: 10,
            //                   ),
            //
            //
            //
            //
            //
            //                   Row(
            //                     mainAxisAlignment: MainAxisAlignment.center,
            //                     children: [
            //                       Text(
            //                           "End time: ${state.afterInsertionTimestamp.toString()}"),
            //                       if(state.afterInsertionTimestamp != null)
            //                         Icon(
            //                           Icons.check_circle,
            //                           color: Colors.green,
            //                         )
            //                       else if(state.afterInsertionTimestamp == null)
            //                         Icon(
            //                           Icons.cancel,
            //                           color: Colors.grey,
            //                         ),
            //                     ],
            //                   ),
            //                   SizedBox(height: 10),
            //                   ListView.builder(
            //                     shrinkWrap: true,
            //                     itemCount: 20,
            //                     itemBuilder: (context, index) {
            //                       return Container(
            //                           // child: ListTile(
            //                           //   title: Text(state.names[index]+"${"hello"}"),
            //                           // ),
            //                           );
            //                     },
            //                   ),
            //                 ],
            //               );
            //             } else {
            //               return Container();
            //             }
            //           },
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            child: Text("press button to insert"),

          ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => DataInsertScreen(title: "insert",)));
        },
        child: Icon(Icons.save),
      ),
      ),
    );
  }

  create() {}
}
