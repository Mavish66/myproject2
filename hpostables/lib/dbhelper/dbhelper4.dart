import 'dart:io';

import 'package:hpostables/dbconstants/dbconstants.dart';
import 'package:hpostables/dbhelper/dbhelper.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DbHelper4 {
  DbHelper4.getInstance();

  static final _instance = DbHelper4.getInstance();

  factory DbHelper4() {
    return _instance;
  }



  // Database? _database = DbHelper().database as Database?;


  insertAllDb4(String table, List<dynamic> objects) async {
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
      } );
      res = listRes;
    } catch (er) {
      print('${er.toString()}');
    }
    return res;
  }


Future<List<Map<String, dynamic>>?> getSettingsDb() async {
  final db = await DbHelper().database;
    List<Map<String, Object?>>? result = await db?.query( "settings");
    print(result);
    return result;
  }

  Future<List<Map<String, dynamic>>?> getSectionsDb() async {

    final db = await DbHelper().database;
    List<Map<String, Object?>>? result = await db?.query("sections");
    print(result);
    return result;

  }

  Future<List<Map<String, dynamic>>?> getItemModifierdetailDb() async {

    final db = await DbHelper().database;
    List<Map<String, Object?>>? result = await db?.query("item_modifier_detail");
    print(result);
    return result;

  }



  initDb4() async  {
    var db = await DbHelper().database;
    await db?.execute("""
    CREATE TABLE ${DbConstant.OffersNdiscountsTable}(
    ${DbConstant.offersNdiscountCA} TIMESTAMP,
    ${DbConstant.offersNdiscountUA} TIMESTAMP,
    ${DbConstant.offersNdiscountID} INTEGER
    )
    """);
    print("${DbConstant.OffersNdiscountsTable} table  is  created");


    await db?.execute("""
    CREATE TABLE ${DbConstant.ItemsModifierTable} (
    ${DbConstant.itemsmodifiersCA} TIMESTAMP,
    ${DbConstant.itemsmodifiersUA} TIMESTAMP,
    ${DbConstant.itemsmodifiersID} INTEGER
    )
    """);
    print("${DbConstant.ItemsModifierTable} table  is  created");





    await db?.execute("""
    CREATE TABLE ${DbConstant.ItemModifierDetailtable}(
    ${DbConstant.itemmodifierdetailID} INTEGER,
    ${DbConstant.itemmodifierdetailCA} TEXT,
    ${DbConstant.itemmodifierdetailUA} TEXT,
    ${DbConstant.itemmodifierdetailC} TEXT,
    ${DbConstant.itemmodifierdetailSC} TEXT,
    ${DbConstant.itemmodifierdetailTN} TEXT,
    ${DbConstant.itemmodifierdetailD} TEXT,
    ${DbConstant.itemmodifierdetailD2} TEXT,
    ${DbConstant.itemmodifierdetailQP} TEXT,
    ${DbConstant.itemmodifierdetailMAXS} TEXT,
    ${DbConstant.itemmodifierdetailMS} TEXT,
    ${DbConstant.itemmodifierdetailPT} TEXT,
    ${DbConstant.itemmodifierdetailPH} TEXT,
    ${DbConstant.itemmodifierdetailUOM} TEXT,
    ${DbConstant.itemmodifierdetailUC} TEXT,
    ${DbConstant.itemmodifierdetailP} TEXT
    )
    """);
    print("${DbConstant.ItemModifierDetailtable} table  is  created");




    await db?.execute("""
    CREATE TABLE ${DbConstant.SectionsTable}(
    ${DbConstant.sectionsCA} TEXT,
    ${DbConstant.sectionsUA} TEXT,
    ${DbConstant.sectionsC} TEXT,
    ${DbConstant.sectionsD} TEXT,
    ${DbConstant.sectionsHT} TEXT,
    ${DbConstant.sectionsSC} TEXT,
    ${DbConstant.sectionsID} INTEGER,
    ${DbConstant.sectionsIA} TEXT
    )
    """);
    print("${DbConstant.SectionsTable} table  is  created");

    await db?.execute("""
    CREATE TABLE ${DbConstant.SettingsTable}(
    ${DbConstant.settingsCA} TEXT,
    ${DbConstant.settingsUA} TEXT,
    ${DbConstant.settingsU} TEXT,
    ${DbConstant.settingsSS} TEXT,
    ${DbConstant.settingsS} TEXT,
    ${DbConstant.settingsIA} TEXT,
    ${DbConstant.settingsT} TEXT,
    ${DbConstant.settingsID} INTEGER
    )
    """);
    print("${DbConstant.SettingsTable} table  is  created");
    print("--------------------------- FROM Dbhelper4  5 tables were created-------------------------");

  }
}
