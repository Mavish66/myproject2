import 'dart:io';

import 'package:hpostables/dbconstants/dbconstants.dart';
import 'package:hpostables/dbhelper/dbhelper.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DbHelper5 {
  DbHelper5.getInstance();

  static final _instance = DbHelper5.getInstance();

  static final _databaseVersion = 2;
  static final _databaseName = "MyDataBase5.db";

  String? path;

  factory DbHelper5() {
    return _instance;
  }

  static Database? _database;

  insertAllDb5(String table, List<dynamic> objects) async {
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

  Future<List<Map<String, dynamic>>?> getshiftDB() async {
    final db  = await DbHelper().database;
    List<Map<String,Object?>>? result = await db?.query("shift");
    print(result);
    return result;

  }

  Future<List<Map<String, dynamic>>?> getUserTableStatuesDB() async {
    final db  = await DbHelper().database;
    List<Map<String,Object?>>? result = await db?.query("usertablestatuses");
    print(result);
    return result;

  }

  Future<List<Map<String, dynamic>>?> getUsersDB() async {
    final db  = await DbHelper().database;
    List<Map<String,Object?>>? result = await db?.query("users");
    print(result);
    return result;

  }


  initDb5() async {
    var db = await DbHelper().database;

    await db?.execute("""
    CREATE TABLE ${DbConstant.ShiftTable} (
    ${DbConstant.shiftID} INTEGER,
    ${DbConstant.shiftCA} TEXT,
    ${DbConstant.shiftUA} TEXT,
    ${DbConstant.shiftSID} TEXT,
    ${DbConstant.shiftLID} TEXT
    )
    """);
    print("${DbConstant.ShiftTable} table  is  created");

    await db?.execute("""
    CREATE TABLE ${DbConstant.variantsTable} (
    ${DbConstant.variantsCA} TIMESTAMP,
    ${DbConstant.variantsUpdatedAt} TIMESTAMP,
    ${DbConstant.variantsId} INTEGER
    )
    """);
    print("${DbConstant.variantsTable} table  is  created");


    await db?.execute("""
    CREATE TABLE ${DbConstant.variantTable} (
    ${DbConstant.variantId} INTEGER,
    ${DbConstant.variantCA} TIMESTAMP,
    ${DbConstant.variantUpDateAt} TIMESTAMP,
    ${DbConstant.variantItemNo} TEXT,
    ${DbConstant.variantDescription} TEXT,
    ${DbConstant.variantDescription2} TEXT,
    ${DbConstant.variantVCode} TEXT,
    ${DbConstant.variantSCode} TEXT,
    ${DbConstant.variantLcode} TEXT,
    ${DbConstant.variantIsVariant} TEXT,
    ${DbConstant.variantIsActive} TEXT
    )
    """);
    print("${DbConstant.variantTable} table  is  created");


    await db?.execute("""
    CREATE TABLE ${DbConstant.usertablestatusesTable}(
    ${DbConstant.usertablestatusesCA} TEXT,
    ${DbConstant.usertablestatusesUpdateAt} TEXT,
    ${DbConstant.usertablestatusesUserid} TEXT,
    ${DbConstant.usertablestatusesStatus} TEXT,
    ${DbConstant.usertablestatusesnextstatus} TEXT,
    ${DbConstant.usertablestatusesisactive} TEXT,
    ${DbConstant.usertablestatusesCreatedBy} TEXT,
    ${DbConstant.usertablestatusesId} INTEGER
    )
    """);
    print("${DbConstant.usertablestatusesTable} table  is  created");

    await db?.execute("""
      CREATE TABLE ${DbConstant.usersTable}(
      ${DbConstant.usersName} TEXT,
      ${DbConstant.usersEmail} TEXT,
      ${DbConstant.usersRole} TEXT,
      ${DbConstant.usersShiftId} TEXT,
      ${DbConstant.usersBranchId} TEXT,
      ${DbConstant.usersId}  INTEGER
      )
      """);

    print("${DbConstant.usersTable} table  is  created");

    print("----------------------- FROM Dbhelper5  5 tables were created ----------------------");


  }
}
