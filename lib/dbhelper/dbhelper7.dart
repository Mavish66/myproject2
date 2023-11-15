import 'dart:io';

import 'package:hpostables/dbconstants/dbconstants.dart';
import 'package:hpostables/dbhelper/dbhelper.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DbHelper7{

  DbHelper7.getInstance();

  static final _instance = DbHelper7.getInstance();




  factory DbHelper7(){
    return _instance;
  }




  insertAllDb7(String table, List<dynamic> objects) async {
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


  Future<List<Map<String, dynamic>>?> getPortionWeightDB() async {
    final db = await DbHelper().database;
    List<Map<String, Object?>>? result = await db?.query("portion_weights");
    print(result);
    return result;
  }


  Future<List<Map<String, dynamic>>?> getPortionCostHierarchiesDB() async {
    final db = await DbHelper().database;
    List<Map<String, Object?>>? result = await db?.query("portion_cost_hierarchies");
    print(result);
    return result;
  }




  initDb7() async  {
    var db = await DbHelper().database;

    await db?.execute("""
    CREATE TABLE ${DbConstant.PaymentsetupsTable}(
    ${DbConstant.paymentsetupsCA} TIMESTAMP,
    ${DbConstant.paymentsetupsUA} TIMESTAMP,
    ${DbConstant.paymentsetupsC} TEXT,
    ${DbConstant.paymentsetupsD} TEXT,
    ${DbConstant.paymentsetupsHT} TEXT,
    ${DbConstant.paymentsetupsFT} TEXT,
    ${DbConstant.paymentsetupsID} INTEGER
    )
    """);
    print("${DbConstant.PaymentsetupsTable} table  is  created");


    await db?.execute("""
    CREATE TABLE ${DbConstant.PersonalAccessTokens}(
    ${DbConstant.personalAccesstokenTT} TEXT,
    ${DbConstant.personalAccesstokenTID} INTEGER,
    ${DbConstant.personalAccesstokenN} TEXT,
    ${DbConstant.personalAccesstokenT} TEXT,
    ${DbConstant.personalAccesstokenA} TEXT,
    ${DbConstant.personalAccesstokenLUA} TIMESTAMP,
    ${DbConstant.personalAccesstokenCA} TIMESTAMP,
    ${DbConstant.personalAccesstokenUA} TIMESTAMP,
    ${DbConstant.personalAccesstokenID} INTEGER
    )
    """);
    print("${DbConstant.PersonalAccessTokens} table  is  created");

    await db?.execute("""
      CREATE TABLE ${DbConstant.PortionCostHierarchies}(
      ${DbConstant.portionCHCA} TEXT,
      ${DbConstant.portionCHUA} TEXT,
      ${DbConstant.portionCHPHL} TEXT,
      ${DbConstant.portionCHPC} TEXT,
      ${DbConstant.portionCHE} TEXT,
      ${DbConstant.portionCHIA} TEXT,
      ${DbConstant.portionCHID} INTEGER
      )
      """);
    print("${DbConstant.PortionCostHierarchies} table  is  created");


    await db?.execute("""
    CREATE TABLE ${DbConstant.PortionWeightsTable}(
    ${DbConstant.portionWeightsCA} TEXT,
    ${DbConstant.portionWeightsUA} TEXT,
    ${DbConstant.portionWeightsPWL} TEXT,
    ${DbConstant.portionWeightsPWC} TEXT,
    ${DbConstant.portionWeightsPWV} TEXT,
    ${DbConstant.portionWeightsE} TEXT,
    ${DbConstant.portionWeightsIA} TEXT,
    ${DbConstant.portionWeightsID} INTEGER
    )
    """);
    print("${DbConstant.PortionWeightsTable} table  is  created");


    await db?.execute("""
    CREATE TABLE ${DbConstant.PosstaffPermissionGroupTable}(
    ${DbConstant.posstaffpermissiongtCA} TIMESTAMP,
    ${DbConstant.posstaffpermissiongtUA} TIMESTAMP,
    ${DbConstant.posstaffpermissiongtC} TEXT,
    ${DbConstant.posstaffpermissiongtD} TEXT,
    ${DbConstant.posstaffpermissiongtMP} INTEGER,
    ${DbConstant.posstaffpermissiongtAP} INTEGER,
    ${DbConstant.posstaffpermissiongtAD} INTEGER,
    ${DbConstant.posstaffpermissiongtAC} INTEGER,
    ${DbConstant.posstaffpermissiongtID} INTEGER
    )
    """);
    print("${DbConstant.PosstaffPermissionGroupTable} table  is  created");

    print("---------------------------- FROM Dbhelper7  5 tables were created-------------------------");


  }

}