import 'dart:io';

import 'package:hpostables/dbconstants/dbconstants.dart';
import 'package:hpostables/dbhelper/dbhelper.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DbHelper10{

  DbHelper10.getInstance();

  static final _instance = DbHelper10.getInstance();


  factory DbHelper10(){
    return _instance;
  }

  static Database? _database;



  insertAllDb10(String table, List<dynamic> objects) async {
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

  Future<List<Map<String, dynamic>>?> getTableConfiguratorsDB() async {
    final db = await DbHelper().database;
    List<Map<String, Object?>>? result = await db?.query("table_configurators");
    print(result);
    return result;
  }




  initDb10() async  {

   var db = await DbHelper().database;

    await db?.execute("""
    CREATE TABLE ${DbConstant.StaffTable}(
    ${DbConstant.staffCA} TIMESTAMP,
    ${DbConstant.staffUA} TIMESTAMP,
    ${DbConstant.staffN} TEXT,
    ${DbConstant.staffNT} TEXT,
    ${DbConstant.staffPG} TEXT,
    ${DbConstant.staffID} INTEGER PRIMARY KEY
    )
    """);
    print("${DbConstant.StaffTable} table  is  created");


    await db?.execute("""
    CREATE TABLE ${DbConstant.StateMastertable}(
    ${DbConstant.statemasterCA} TIMESTAMP,
    ${DbConstant.statemasterUA} TIMESTAMP,
    ${DbConstant.statemasterN} TEXT,
    ${DbConstant.statemasterCID} TEXT,
    ${DbConstant.statemasterCC} TEXT,
    ${DbConstant.statemasterCN} TEXT,
    ${DbConstant.statemasterSC} TEXT,
    ${DbConstant.statemasterT} TEXT,
    ${DbConstant.statemasterLT} TEXT,
    ${DbConstant.statemasterL} TEXT,
    ${DbConstant.statemasterID} INTEGER
    )
    """);
    print("${DbConstant.StateMastertable} table  is  created");


    await db?.execute("""
    CREATE TABLE ${DbConstant.StoreConfigurationsTable}(
    ${DbConstant.storeconfigCA} TIMESTAMP,
    ${DbConstant.storeconfigUA} TIMESTAMP,
    ${DbConstant.storeconfigNO} TEXT,
    ${DbConstant.storeconfigN} TEXT,
    ${DbConstant.storeconfigAD} TEXT,
    ${DbConstant.storeconfigAD2} TEXT,
    ${DbConstant.storeconfigC} TEXT,
    ${DbConstant.storeconfigPCC} TEXT,
    ${DbConstant.storeconfigSID} TEXT,
    ${DbConstant.storeconfigSN} TEXT,
    ${DbConstant.storeconfigPN} TEXT,
    ${DbConstant.storeconfigCCC} TEXT,
    ${DbConstant.storeconfigE} TEXT,
    ${DbConstant.storeconfigCC} TEXT,
    ${DbConstant.storeconfigPC} TEXT,
    ${DbConstant.storeconfigID} INTEGER
    )
    """);
    print("${DbConstant.StoreConfigurationsTable} table  is  created");


    await db?.execute("""
    CREATE TABLE ${DbConstant.StorePaymentsetupsTable}(
    ${DbConstant.storepaymentsetupsCA} TIMESTAMP,
    ${DbConstant.storepaymentsetupsUA} TIMESTAMP,
    ${DbConstant.storepaymentsetupsC} TEXT,
    ${DbConstant.storepaymentsetupsD} TEXT,
    ${DbConstant.storepaymentsetupsSC} TEXT,
    ${DbConstant.storepaymentsetupsHT} TEXT,
    ${DbConstant.storepaymentsetupsACN} INTEGER,
    ${DbConstant.storepaymentsetupsID} INTEGER
    )
    """);
    print("${DbConstant.StorePaymentsetupsTable} table  is  created");

    await db?.execute("""
    CREATE TABLE ${DbConstant.TableConfiguratorsTable}(
    ${DbConstant.tableconfiguratostableCA} TEXT,
    ${DbConstant.tableconfiguratostableUA} TEXT,
    ${DbConstant.tableconfiguratostableE} TEXT,
    ${DbConstant.tableconfiguratostableFNO} TEXT,
    ${DbConstant.tableconfiguratostableFN} TEXT,
    ${DbConstant.tableconfiguratostableC} TEXT,
    ${DbConstant.tableconfiguratostableDT} TEXT,
    ${DbConstant.tableconfiguratostableL} TEXT,
    ${DbConstant.tableconfiguratostableD} TEXT,
    ${DbConstant.tableconfiguratostableFC} TEXT,
    ${DbConstant.tableconfiguratostableOS} TEXT,
    ${DbConstant.tableconfiguratostableFORM} TEXT,
    ${DbConstant.tableconfiguratostablePG} TEXT,
    ${DbConstant.tableconfiguratostableSID} TEXT,
    ${DbConstant.tableconfiguratostableUID} TEXT,
    ${DbConstant.tableconfiguratostableUIC} TEXT,
    ${DbConstant.tableconfiguratostableP} TEXT,
    ${DbConstant.tableconfiguratostableGI} TEXT,
    ${DbConstant.tableconfiguratostableGL} TEXT,
    ${DbConstant.tableconfiguratostableM} TEXT,
    ${DbConstant.tableconfiguratostableOT} TEXT,
    ${DbConstant.tableconfiguratostableOU} TEXT,
    ${DbConstant.tableconfiguratostableOK} TEXT,
    ${DbConstant.tableconfiguratostableOL} TEXT,
    ${DbConstant.tableconfiguratostableID} INTEGER,
    ${DbConstant.tableconfiguratostableFE} TEXT
    )
    """);
    print("${DbConstant.TableConfiguratorsTable} table  is  created");

    print("------------------------------ FROM Dbhelper10  5 tables were created ---------------------------------");



  }

}