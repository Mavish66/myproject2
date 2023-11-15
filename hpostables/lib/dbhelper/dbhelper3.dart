import 'dart:io';

import 'package:hpostables/dbconstants/dbconstants.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import 'dbhelper.dart';

class DbHelper3 {
  DbHelper3.getInstance();

  static final _instance = DbHelper3.getInstance();




  factory DbHelper3() {
    return _instance;
  }







  insertAllDb3(String table, List<dynamic> objects) async {
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

  Future<List<Map<String, dynamic>>?> getMenuhierarchiesDB() async {
    final db = await DbHelper().database;
    List<Map<String,Object?>>? result = await db?.query("menuhierarchies");
    print(result);
    return result;

  }
  Future<List<Map<String, dynamic>>?> getNumberSeriesDB() async {
    final db = await DbHelper().database;
    List<Map<String,Object?>>? result = await db?.query("number_series");
    print(result);
    return result;

  }





  initDb3() async {
    var db = await DbHelper().database;


    await db?.execute("""
    CREATE TABLE ${DbConstant.MenuHierarchySectionLinksTable} (
    ${DbConstant.menuhirarchyslCA} TEXT,
    ${DbConstant.menuhirarchyslUA} TEXT,
    ${DbConstant.menuhirarchyslMID} TEXT,
    ${DbConstant.menuhirarchyslSID} TEXT,
    ${DbConstant.menuhirarchyslIA} TEXT,
    ${DbConstant.menuhirarchyslID} INTEGER
    )
    """);
    print("${DbConstant.MenuHierarchySectionLinksTable} table  is  created");


    await db?.execute("""
    CREATE TABLE ${DbConstant.MenuHierarchiesTable}(
    ${DbConstant.menuhierarchiesCA} TEXT,
    ${DbConstant.menuhierarchiesUA} TEXT,
    ${DbConstant.menuhierarchiesHL} TEXT,
    ${DbConstant.menuhierarchiesHC} TEXT,
    ${DbConstant.menuhierarchiesPID} TEXT,
    ${DbConstant.menuhierarchiesIA} TEXT,
    ${DbConstant.menuhierarchiesID} INTEGER,
    ${DbConstant.menuhierarchiessectioncode} TEXT,
    ${DbConstant.menuhierarchiessectionname} TEXT
    )
    """);
    print("${DbConstant.MenuHierarchiesTable} table  is  created");


    await db?.execute("""
    CREATE TABLE ${DbConstant.vatmasters}(
    ${DbConstant.vatMastersCA} TIMESTAMP,
    ${DbConstant.vatMastersUpdateAt} TIMESTAMP,
    ${DbConstant.vatMastersVatCode} TEXT,
    ${DbConstant.vatMastersVatPercent} TEXT,
    ${DbConstant.vat_MastersStartDate} TIMESTAMP,
    ${DbConstant.vatMastersEndDate} TIMESTAMP,
    ${DbConstant.vatMastersDescription} TEXT,
    ${DbConstant.vatMastersId} INTEGER
    )
    """);
    print("${DbConstant.vatmasters} table  is  created");


    await db?.execute("""
    CREATE TABLE ${DbConstant.MigrationTable} (
    ${DbConstant.migrationsM} TEXT,
    ${DbConstant.migrationsB} TEXT,
    ${DbConstant.migrationsID} INTEGER
    )
    """);
    print("${DbConstant.MigrationTable} table  is  created");


    await db?.execute("""
    CREATE TABLE ${DbConstant.NumberSeriesTable}(
    ${DbConstant.numberseriesID} INTEGER,
    ${DbConstant.numberseriesCA} TEXT,
    ${DbConstant.numberseriesUA} TEXT,
    ${DbConstant.numberseriesNL} TEXT,
    ${DbConstant.numberseriesNC} TEXT,
    ${DbConstant.numberseriesE} TEXT,
    ${DbConstant.numberseriesIA} TEXT
    )
    """);
    print("${DbConstant.NumberSeriesTable} table  is  created");
    print("------------- FROM Dbhelper3  5 tables were created ----------------- ");

  }
}
