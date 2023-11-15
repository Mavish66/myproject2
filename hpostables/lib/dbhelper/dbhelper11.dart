import 'dart:io';

import 'package:hpostables/dbconstants/dbconstants.dart';
import 'package:hpostables/dbhelper/dbhelper.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DbHelper11 {
  DbHelper11.getInstance();

  static final _instance = DbHelper11.getInstance();

  String? path;

  factory DbHelper11() {
    return _instance;
  }

  static Database? _database;

  insertAllDb11(String table, List<dynamic> objects) async {
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

  Future<List<Map<String, dynamic>>?> getTableStatuses() async {
    final db = await DbHelper().database;
    List<Map<String, Object?>>? result =
        await db?.query("table_setup_statuses");
    print(result);
    return result;
  }

  Future<List<Map<String, dynamic>>?> getTableFormLinksDB() async {
    final db = await DbHelper().database;
    List<Map<String, Object?>>? result = await db?.query("tableformlinks");
    print(result);
    return result;
  }

  initDb11() async {
    var db = await DbHelper().database;

    await db?.execute("""
    CREATE TABLE ${DbConstant.TablememberDetails}(
    ${DbConstant.tablememberdetailsCA} TIMESTAMP,
    ${DbConstant.tablememberdetailsUA} TIMESTAMP,
    ${DbConstant.tablememberdetailsP} TEXT,
    ${DbConstant.tablememberdetailsTOP} TEXT,
    ${DbConstant.tablememberdetailsTOD} TEXT,
    ${DbConstant.tablememberdetailsTOC} TEXT,
    ${DbConstant.tablememberdetailsN} TEXT,
    ${DbConstant.tablememberdetailsID} INTEGER PRIMARY KEY
    )
    """);
    print("${DbConstant.TablememberDetails} table  is  created");

    await db?.execute("""
    CREATE TABLE ${DbConstant.TableMemberHeaders}(
    ${DbConstant.tablememberheadersCA} TIMESTAMP,
    ${DbConstant.tablememberheadersUA} TIMESTAMP,
    ${DbConstant.tablememberheadersCID} TEXT,
    ${DbConstant.tablememberheadersOID} TEXT,
    ${DbConstant.tablememberheadersWID} TEXT,
    ${DbConstant.tablememberheadersTID} TEXT,
    ${DbConstant.tablememberheadersID} INTEGER
    )
    """);
    print("${DbConstant.TableMemberHeaders} table  is  created");

    await db?.execute("""
    CREATE TABLE ${DbConstant.TablesetUpstatusesTable}(
    ${DbConstant.tablesetupstatusesCAT} TEXT,
    ${DbConstant.tablesetupstatusesUAT} TEXT,
    ${DbConstant.tablesetupstatusesTID} TEXT,
    ${DbConstant.tablesetupstatusesS} TEXT,
    ${DbConstant.tablesetupstatusesN} TEXT,
    ${DbConstant.tablesetupstatusesSI} TEXT,
    ${DbConstant.tablesetupstatusesTRID} TEXT,
    ${DbConstant.tablesetupstatusesUID} TEXT,
    ${DbConstant.tablesetupstatusesPS} TEXT,
    ${DbConstant.tablesetupstatusesGC} TEXT,
    ${DbConstant.tablesetupstatusesID} INTEGER
    )
    """);
    print("${DbConstant.TablesetUpstatusesTable} table  is  created");

    await db?.execute("""
    CREATE TABLE ${DbConstant.TableStatusesTable}(
    ${DbConstant.tablestatusesCA} TIMESTAMP,
    ${DbConstant.tablestatusesUA} TIMESTAMP,
    ${DbConstant.tablestatusesSL} TEXT,
    ${DbConstant.tablestatusesIC} TEXT,
    ${DbConstant.tablestatusesLC} TEXT,
    ${DbConstant.tablestatusesID} INTEGER
    )
    """);
    print("${DbConstant.TableStatusesTable} table  is  created");

    await db?.execute("""
    CREATE TABLE ${DbConstant.TableformLinkstable}(
    ${DbConstant.tableformlinksCA} TEXT,
    ${DbConstant.tableformlinksUA} TEXT,
    ${DbConstant.tableformlinksFID} TEXT,
    ${DbConstant.tableformlinksTN} TEXT,
    ${DbConstant.tableformlinksMN} TEXT,
    ${DbConstant.tableformlinksIA} INTEGER,
    ${DbConstant.tableformlinksID} INTEGER,
    ${DbConstant.tableformlinksUID} TEXT
    )
    """);
    print("${DbConstant.TableformLinkstable} table  is  created");
    print(
        "-------------------FROM Dbhelper11  5 tables were created----------------");
  }
}
