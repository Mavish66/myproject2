import 'dart:io';

import 'package:hpostables/dbconstants/dbconstants.dart';
import 'package:hpostables/dbhelper/dbhelper.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DbHelper17 {
  DbHelper17.getInstance();

  static final _instance = DbHelper17.getInstance();

  factory DbHelper17() {
    return _instance;
  }

  static Database? _database;

  insertAll17(String table, List<dynamic> objects) async {
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

  Future<List<Map<String, dynamic>>?> getDiscountType() async {
    final db = await DbHelper().database;
    // return await db?.query("discounttypes");
    List<Map<String, Object?>>? result = await db?.query("discounttypes");
    print(result);
    return result;
  }

  Future<List<Map<String, dynamic>>?> getDivisionMastersDB() async {
    final db = await DbHelper().database;
    List<Map<String, Object?>>? result = await db?.query("division_masters");
    print(result);
    return result;
  }

  initDb17() async {
    var db = await DbHelper().database;

    await db?.execute("""
    CREATE TABLE ${DbConstant.DealHeadersTable} (
    ${DbConstant.dealheadersCA} TIMESTAMP,
    ${DbConstant.dealheadersUA} TIMESTAMP,
    ${DbConstant.dealheadersDC} TEXT,
    ${DbConstant.dealheadersSDL} INTEGER,
    ${DbConstant.dealheadersPG} TEXT,
    ${DbConstant.dealheadersVP} TEXT,
    ${DbConstant.dealheadersS} TEXT,
    ${DbConstant.dealheadersDP} INTEGER,
    ${DbConstant.dealheadersID} INTEGER
    )
    """);
    print("${DbConstant.DealHeadersTable} table  is  created");

    await db?.execute("""
    CREATE TABLE ${DbConstant.DealItemsTable} (
    ${DbConstant.dealCA} TIMESTAMP,
    ${DbConstant.dealUA} TIMESTAMP,
    ${DbConstant.dealId} INTEGER
    )
    """);
    print("${DbConstant.DealItemsTable} table  is  created");

    await db?.execute("""
    CREATE TABLE ${DbConstant.DealTRNlinkTable} (
    ${DbConstant.dealtrnCA} TIMESTAMP,
    ${DbConstant.dealtrnUA} TIMESTAMP,
    ${DbConstant.dealtrnLink} TEXT,
    ${DbConstant.dealdealink} TEXT,
    ${DbConstant.dealid} INTEGER
    )
    """);
    print("${DbConstant.DealTRNlinkTable} table  is  created");

    await db?.execute("""
    CREATE TABLE ${DbConstant.DiscountTypesTable} (
    ${DbConstant.discountCA} TEXT,
    ${DbConstant.discountUA} TEXT,
    ${DbConstant.discountL} TEXT,
    ${DbConstant.discountTYPE} TEXT,
    ${DbConstant.discountLID} TEXT,
    ${DbConstant.discountD} TEXT,
    ${DbConstant.discountID} INTEGER
    )
    """);

    await db?.execute("""
    CREATE TABLE ${DbConstant.DivisionMastersTable} (
    ${DbConstant.divisionCA} TEXT,
    ${DbConstant.divisionUA} TEXT,
    ${DbConstant.divisionL} TEXT,
    ${DbConstant.divisionC} TEXT,
    ${DbConstant.divisionEX} TEXT,
    ${DbConstant.divisionIA} TEXT,
    ${DbConstant.divisionID} INTEGER
    );
    """);
    print("${DbConstant.DivisionMastersTable} table  is  created");
    print(
        "------------------------- FROM Dbhelper17  5 tables were created-------------------------------");
  }
}
