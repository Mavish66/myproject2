import 'dart:io';

import 'package:hpostables/dbconstants/dbconstants.dart';
import 'package:hpostables/dbhelper/dbhelper.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DbHelper18 {
  DbHelper18.getInstance();

  static final _instance = DbHelper18.getInstance();

  factory DbHelper18() {
    return _instance;
  }

  static Database? _database;

  insertAllDb18(String table, List<dynamic> objects) async {
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

  Future<List<Map<String, dynamic>>?> getGUIMenusDB() async {
    final db = await DbHelper().database;
    List<Map<String, Object?>>? result = await db?.query("gui_menuses");
    print(result);
    return result;
  }

  initDb18() async {
    var db = await DbHelper().database;

    await db?.execute("""
    CREATE TABLE ${DbConstant.FailedJobstable} (
    ${DbConstant.failedjobsUUID} TEXT,
    ${DbConstant.failedjobsC} TEXT,
    ${DbConstant.failedjobsQ} TEXT,
    ${DbConstant.failedjobsPLYD} TEXT,
    ${DbConstant.failedjobsEXP} TEXT,
    ${DbConstant.failedjobsFat} TIMESTAMP,
    ${DbConstant.failedjobsid} INTEGER
   )
   """);
    print("${DbConstant.FailedJobstable} table  is  created");

    await db?.execute("""
    CREATE TABLE ${DbConstant.GuiMenusesTable} (
    ${DbConstant.guimenuesCA} TEXT,
    ${DbConstant.guimenuesUA} TEXT,
    ${DbConstant.guimenuesGML} TEXT,
    ${DbConstant.guimenuesGMC} TEXT,
    ${DbConstant.guimenuesI} TEXT,
    ${DbConstant.guimenuesC} TEXT,
    ${DbConstant.guimenuesBC} TEXT,
    ${DbConstant.guimenuesPID} TEXT,
    ${DbConstant.guimenuesIA} TEXT,
    ${DbConstant.guimenuesFID} TEXT,
    ${DbConstant.guimenuesID} INTEGER
    ); 
    """);
    print("${DbConstant.GuiMenusesTable} table  is  created");

    await db?.execute("""
    CREATE TABLE ${DbConstant.HospitalityDefaultsetuptable} (
    ${DbConstant.hospitalitydfsCA} TIMESTAMP,
    ${DbConstant.hospitalitydfsUA} TIMESTAMP,
    ${DbConstant.hospitalitydfsDFT} TEXT,
    ${DbConstant.hospitalitydfsDC} TEXT,
    ${DbConstant.hospitalitydfsDP} TEXT,
    ${DbConstant.hospitalitydfsID} INTEGER
   )
   """);
    print("${DbConstant.HospitalityDefaultsetuptable} table  is  created");

    await db?.execute("""
    CREATE TABLE ${DbConstant.HospitalitystatusTable} (
    ${DbConstant.hospitalitystatusCA} TIMESTAMP,
    ${DbConstant.hospitalitystatusUA} TIMESTAMP,
    ${DbConstant.hospitalitystatusC} TEXT,
    ${DbConstant.hospitalitystatusd} TEXT,
    ${DbConstant.hospitalitystatusHT} TEXT,
    ${DbConstant.hospitalitystatusSC} TEXT,
    ${DbConstant.hospitalitystatusID} INTEGER
    )
    """);
    print("${DbConstant.HospitalitystatusTable} table  is  created");

    await db?.execute("""
    CREATE TABLE ${DbConstant.HospitalitytypesTable} (
    ${DbConstant.hospitalitytypesCA} TEXT,
    ${DbConstant.hospitalitytypesUA} TEXT,
    ${DbConstant.hospitalitytypesC} TEXT,
    ${DbConstant.hospitalitytypesD} TEXT,
    ${DbConstant.hospitalitytypesSC} TEXT,
    ${DbConstant.hospitalitytypesLW} TEXT,
    ${DbConstant.hospitalitytypesID} INTEGER,
    ${DbConstant.hospitalitytypesIS} TEXT
    )
    """);
    print("${DbConstant.HospitalitytypesTable} table  is  created");

    print(
        "---------------------- FROM Dbhelper18  5 tables were created ------------------ ");
  }
}
