import 'dart:io';

import 'package:hpostables/dbconstants/dbconstants.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import 'dbhelper.dart';

class DbHelper15 {
  DbHelper15.getInstance();

  static final _instance = DbHelper15.getInstance();

  factory DbHelper15() {
    return _instance;
  }

  static Database? _database;

  insertAllDb15(String table, List<dynamic> objects) async {
    List<dynamic> listRes = [];
    var res;
    try {
      // if (_database == null) {
      //   await database;
      // }
      var db = await DbHelper().database;
      await db?.transaction((db) async {
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
  }

  Future<List<Map<String, dynamic>>?> getItempricesDB() async {
    final db = await DbHelper().database;
    List<Map<String, Object?>>? result = await db?.query("item_prices");
    print(result);
    return result;
  }

  Future<List<Map<String, dynamic>>?> getCostingMethodDB() async {
    final db = await DbHelper().database;
    List<Map<String, Object?>>? result = await db?.query("costing_methods");
    print(result);
    return result;
  }

  initDb15() async {
    var db = await DbHelper().database;

    await db?.execute("""
        CREATE TABLE ${DbConstant.ItemPricesTable} (
        ${DbConstant.itempricesCA} TEXT,
        ${DbConstant.itempricesUA} TEXT,
        ${DbConstant.itempricesIN} TEXT,
        ${DbConstant.itempricesSC} TEXT,
        ${DbConstant.itempricesUP} TEXT,
        ${DbConstant.itempricesUPI} TEXT,
        ${DbConstant.itempricesSD} TEXT,
        ${DbConstant.itempricesED} TEXT,
        ${DbConstant.itempricesUOM} TEXT,
        ${DbConstant.itempricesVC} TEXT,
        ${DbConstant.itempricesLC} TEXT,
        ${DbConstant.itempricesVCC} TEXT,
        ${DbConstant.itempricesCC} TEXT,
        ${DbConstant.itempricesST} TEXT,
        ${DbConstant.itempricesET} TEXT,
        ${DbConstant.itempricesIP} TEXT,
        ${DbConstant.itempricesID} INTEGER
        )
        """);
    print("${DbConstant.ItemPricesTable} table  is  created");

    await db?.execute("""
        CREATE TABLE ${DbConstant.ItemsetupsTable} (
        ${DbConstant.itemsetupsCA} TIMESTAMP,
        ${DbConstant.itemsetupsUA} TIMESTAMP,
        ${DbConstant.itemsetupsIN} TEXT,
        ${DbConstant.itemsetupsIMI} INTEGER,
        ${DbConstant.itemsetupsEB} INTEGER,
        ${DbConstant.itemsetupsSS} TEXT,
        ${DbConstant.itemsetupsLC} TEXT,
        ${DbConstant.itemsetupsCC} TEXT,
        ${DbConstant.itemsetupsPI} INTEGER,
        ${DbConstant.itemsetupsIA} INTEGER,
        ${DbConstant.itemsetupsSD} TEXT,
        ${DbConstant.itemsetupsED} TEXT,
        ${DbConstant.itemsetupsST} TIME,
        ${DbConstant.itemsetupsET} TIME,
        ${DbConstant.itemsetupsHT} TEXT
        )
        """);
    print("${DbConstant.ItemsetupsTable} table  is  created");

    await db?.execute("""
        CREATE TABLE ${DbConstant.ItemMastersTable} (
        ${DbConstant.itemmastersCA} TIMESTAMP,
        ${DbConstant.itemmastersUA} TIMESTAMP,
        ${DbConstant.itemmastersIID} INTEGER PRIMARY KEY,
        ${DbConstant.itemmastersCc} TEXT,
        ${DbConstant.itemmastersN} TEXT,
        ${DbConstant.itemmastersRN} TEXT,
        ${DbConstant.itemmastersD} TEXT,
        ${DbConstant.itemmastersDT} TEXT,
        ${DbConstant.itemmastersLD} TEXT,
        ${DbConstant.itemmastersLDT} TEXT,
        ${DbConstant.itemmastersVN} TEXT,
        ${DbConstant.itemmastersVIN} TEXT,
        ${DbConstant.itemmastersAOC} TEXT,
        ${DbConstant.itemmastersATCC} TEXT,
        ${DbConstant.itemmastersATC} TEXT,
        ${DbConstant.itemmastersAFC} TEXT,
        ${DbConstant.itemmastersFC} TEXT,
        ${DbConstant.itemmastersBC} TEXT,
        ${DbConstant.itemmastersCCC} TEXT,
        ${DbConstant.itemmastersDC} TEXT,
        ${DbConstant.itemmastersCC} TEXT,
        ${DbConstant.itemmastersGC} TEXT,
        ${DbConstant.itemmastersSGC} TEXT,
        ${DbConstant.itemmastersSSGC} TEXT,
        ${DbConstant.itemmastersBUMC} TEXT,
        ${DbConstant.itemmastersPUC} TEXT,
        ${DbConstant.itemmastersSUC} TEXT,
        ${DbConstant.itemmastersAUC} TEXT,
        ${DbConstant.itemmastersUC} REAL,
        ${DbConstant.itemmastersLDC} REAL,
        ${DbConstant.itemmastersUP} REAL,
        ${DbConstant.itemmastersUPIV} REAL,
        ${DbConstant.itemmastersPIV} TEXT,
        ${DbConstant.itemmastersB} TEXT,
        ${DbConstant.itemmastersIT} TEXT,
        ${DbConstant.itemmastersS} TEXT,
        ${DbConstant.itemmastersCB} TEXT,
        ${DbConstant.itemmastersCD} DATE,
        ${DbConstant.itemmastersUB} TEXT,
        ${DbConstant.itemmastersUD} DATE,
        ${DbConstant.itemmastersVC} TEXT,
        ${DbConstant.itemmastersID} INTEGER
        )
        """);
    print("${DbConstant.ItemMastersTable} table  is  created");

    await db?.execute("""
    CREATE TABLE ${DbConstant.CitymasteraTable}(
    ${DbConstant.citymasterCreatedat} TIMESTAMP,
    ${DbConstant.citymasterupdatedat} TIMESTAMP,
    ${DbConstant.city_mastername} TEXT,
    ${DbConstant.cityState_id} TEXT,
    ${DbConstant.cityStatecode} TEXT,
    ${DbConstant.cityStatename} TEXT,
    ${DbConstant.cityCountryId} TEXT,
    ${DbConstant.cityCountrycode} TEXT,
    ${DbConstant.cityCountryName} TEXT,
    ${DbConstant.cityLatitude} TEXT,
    ${DbConstant.cityLongitude} TEXT,
    ${DbConstant.citywikidataid} TEXT,
    ${DbConstant.cityId} INTEGER
    )
    """);
    print("${DbConstant.CitymasteraTable} table  is  created");

    await db?.execute("""
    CREATE TABLE ${DbConstant.CostingMethodTable} (
    ${DbConstant.costingCreatedat} TEXT,
    ${DbConstant.costingUpdatedat} TEXT,
    ${DbConstant.costinglable} TEXT,
    ${DbConstant.costingcode} TEXT,
    ${DbConstant.costingExtra} TEXT,
    ${DbConstant.costingIsACTIVE} TEXT,
    ${DbConstant.costingId} INTEGER
    )
    """);
    print("${DbConstant.CostingMethodTable} table  is  created");
    print(
        "--------------------- FROM Dbhelper15  5 tables were created------------------------------------");
  }
}
