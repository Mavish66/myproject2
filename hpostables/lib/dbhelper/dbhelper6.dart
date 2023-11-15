import 'dart:io';

import 'package:hpostables/dbconstants/dbconstants.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import 'dbhelper.dart';

class DbHelper6{

  DbHelper6.getInstance();

  static final _instance = DbHelper6.getInstance();


  factory DbHelper6(){
    return _instance;
  }

  static Database? _database;


  insertAllDb6(String table, List<dynamic> objects) async {
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

Future <List<Map<String,dynamic>>?> getUserTablelinksDB() async {
    final db = await DbHelper().database;
    List<Map<String,Object?>>? result = await db?.query("user_table_links");
    print(result);
    return result;


}


  initDb6() async  {
    var db = await DbHelper().database;

    await db?.execute("""
    CREATE TABLE ${DbConstant.userTableLinksTable}(
    ${DbConstant.userTableLinksCreatedAt} TEXT,
    ${DbConstant.userTableLinksUpdated_at} TEXT,
    ${DbConstant.userTableLinksUserid} TEXT,
    ${DbConstant.userTableLinkstableId} TEXT,
    ${DbConstant.userTableLinksActiveStatus} TEXT,
    ${DbConstant.userTableLinksId} INTEGER)
    """);
    print("${DbConstant.userTableLinksTable} table  is  created");

    await db?.execute("""
    CREATE TABLE ${DbConstant.UnitofMeasuresTable} (
    ${DbConstant.unitOfMeasuresCreatedAt} TIMESTAMP,
    ${DbConstant.unitOfMeasuresUpdatedAt} TIMESTAMP,
    ${DbConstant.unitOfMeasuresCode} TEXT,
    ${DbConstant.unitOfMeasuresDescription} TEXT,
    ${DbConstant.unitOfMeasuresISCode} TEXT,
    ${DbConstant.unitOfMeasuresId} INTEGER
    )
    """);
    print("${DbConstant.UnitofMeasuresTable} table  is  created");

    await db?.execute("""
    CREATE TABLE ${DbConstant.transactionTableInfosTable}(
    ${DbConstant.transactionTableInfosCA} TIMESTAMP,
    ${DbConstant.transactionTableInfosUpdateAt} TIMESTAMP,
    ${DbConstant.transactionTableInfosTNo} TEXT,
    ${DbConstant.transactionTableInfosLineNo} TEXT,
    ${DbConstant.transactionTableInfosReceiptNo} TEXT,
    ${DbConstant.transactionTableInfosTableNo} TEXT,
    ${DbConstant.transactionTableInfosNGuests} TEXT,
    ${DbConstant.transactionTableInfosTableStatus} TEXT,
    ${DbConstant.transactionTableInfosId} INTEGER
    )
    """);
    print("${DbConstant.transactionTableInfosTable} table  is  created");




    await db?.execute("""
    CREATE TABLE ${DbConstant.transactionsTable}(
    ${DbConstant.transactionsCA} TIMESTAMP,
    ${DbConstant.transactionsUpdateAt} TIMESTAMP,
    ${DbConstant.transactionsTNo} TEXT,
    ${DbConstant.transactionsReceiptNo} TEXT,
    ${DbConstant.transactionsStoreNo} TEXT,
    ${DbConstant.transactionsPOsTerminaNo} TEXT,
    ${DbConstant.transactionsStaffId} TEXT,
    ${DbConstant.transactionsTDate} TIMESTAMP,
    ${DbConstant.transactionsOriginalDate} TIMESTAMP,
    ${DbConstant.transactionsCustomerNo} TEXT,
    ${DbConstant.transactionsNetAmount} REAL,
    ${DbConstant.transactionsGrossAmount} REAL,
    ${DbConstant.transactionsPayment} REAL,
    ${DbConstant.transactionsDiscount} REAL,
    ${DbConstant.transactionsTotalQuantity} REAL,
    ${DbConstant.transactionsEntryStatus} TEXT,
    ${DbConstant.transactionsNItemsLines} TEXT,
    ${DbConstant.transactionsNPaymentLine} INTEGER,
    ${DbConstant.transactionsTableN} TEXT,
    ${DbConstant.transactionsNoCovers} TEXT,
    ${DbConstant.transactionsActiveTableN} TEXT,
    ${DbConstant.transactionsTableGroup} TEXT,
    ${DbConstant.transactionsKitchenStatus} TEXT,
    ${DbConstant.transactionsOrderN} TEXT,
    ${DbConstant.transactionsTTime} TIMESTAMP,
    ${DbConstant.transactionsId} INTEGER
    )
    """);
    print("${DbConstant.transactionsTable} table  is  created");


    await db?.execute("""
    CREATE TABLE ${DbConstant.PasswordResetsTable}(
    ${DbConstant.passwordresetsE} TEXT,
    ${DbConstant.passwordresetsT} TEXT,
    ${DbConstant.passwordresetsCA} TIMESTAMP
    )
    """);
    print("${DbConstant.PasswordResetsTable} table  is  created");

    print("------------------------------ FROM Dbhelper6  5 tables were created----------------------------");


  }

}