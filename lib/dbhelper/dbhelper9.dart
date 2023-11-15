import 'dart:io';

import 'package:hpostables/dbconstants/dbconstants.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import 'dbhelper.dart';

class DbHelper9{

  DbHelper9.getInstance();

  static final _instance = DbHelper9.getInstance();


  factory DbHelper9(){
    return _instance;
  }

  static Database? _database;


  insertAllDb9(String table, List<dynamic> objects) async {
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

  Future<List<Map<String, dynamic>>?>getReasonMasterDB() async  {
    final db = await DbHelper().database;
    List<Map<String, Object?>>? result = await db?.query("reason_masters");
    print(result);
    return result;

  }






  initDb9() async  {

    var db = await DbHelper().database;

    await db?.execute("""
    CREATE TABLE ${DbConstant.ReasonDetailsTable}(
    ${DbConstant.reasondetailsCA} TIMESTAMP,
    ${DbConstant.reasondetailsUA} TIMESTAMP,
    ${DbConstant.reasondetailsRD} TEXT,
    ${DbConstant.reasondetailsRMID} INTEGER,
    ${DbConstant.reasondetailsIA} INTEGER,
    ${DbConstant.reasondetailsID} INTEGER
    )
    """);
    print("${DbConstant.ReasonDetailsTable} table  is  created");

    await db?.execute("""
    CREATE TABLE ${DbConstant.ReasonMastersTable}(
    ${DbConstant.reasonmasterCA} TEXT,
    ${DbConstant.reasonmasterUA} TEXT,
    ${DbConstant.reasonmasterR} TEXT,
    ${DbConstant.reasonmasterRT} INTEGER,
    ${DbConstant.reasonmasterIA} INTEGER,
    ${DbConstant.reasonmasterID} INTEGER
    )
    """);
    print("${DbConstant.ReasonMastersTable} table  is  created");

    await db?.execute("""
    CREATE TABLE ${DbConstant.RecipeMasterDetailsTable}(
    ${DbConstant.recipemasterdetailCA} TIMESTAMP,
    ${DbConstant.recipemasterdetailUA} TIMESTAMP,
    ${DbConstant.recipemasterdetailIN} TEXT,
    ${DbConstant.recipemasterdetailD} TEXT,
    ${DbConstant.recipemasterdetailC} TEXT,
    ${DbConstant.recipemasterdetailRC} TEXT,
    ${DbConstant.recipemasterdetailID} INTEGER
    )
    """);
    print("${DbConstant.RecipeMasterDetailsTable} table  is  created");


    await db?.execute("""
    CREATE TABLE ${DbConstant.RecipeMastersTable}(
    ${DbConstant.recipemastersCA} TIMESTAMP,
    ${DbConstant.recipemastersUA} TIMESTAMP,
    ${DbConstant.recipemastersRC} TEXT,
    ${DbConstant.recipemastersRN} TEXT,
    ${DbConstant.recipemastersS} TEXT,
    ${DbConstant.recipemastersID} INTEGER
    )
    """);
    print("${DbConstant.RecipeMastersTable} table  is  created");

    await db?.execute("""
    CREATE TABLE ${DbConstant.ShifOperationTable}(
    ${DbConstant.shiftoperarionCA} TIMESTAMP,
    ${DbConstant.shiftoperarionUA} TIMESTAMP,
    ${DbConstant.shiftoperarionSID} INTEGER,
    ${DbConstant.shiftoperarionOT} TIMESTAMP,
    ${DbConstant.shiftoperarionCT} TIMESTAMP,
    ${DbConstant.shiftoperarionID} INTEGER
    )
    """);
    print("${DbConstant.ShifOperationTable} table  is  created");

    print("------------------------- FROM Dbhelper9  5 tables were created -------------------------");



  }

}