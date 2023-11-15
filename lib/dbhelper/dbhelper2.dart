import 'dart:io';

import 'package:hpostables/dbconstants/dbconstants.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import 'dbhelper.dart';

class DbHelper2 {
  DbHelper2.getInstance();

  static final _instance = DbHelper2.getInstance();

  factory DbHelper2() {
    return _instance;
  }

  // Database? _database = DbHelper().database as Database?;



  insertAllDb2(String table, List<dynamic> objects) async {
    List<dynamic> listRes = [];
    var res;
    try {
      // if (_database != null) {
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

  Future<List<Map<String, dynamic>>?> getRecipesDB() async {
    final db = await DbHelper().database;
    List<Map<String, Object?>>? result = await db?.query("recipes");
    print(result);
    return result;
  }

  Future<List<Map<String, dynamic>>?> getKDSMastersDB() async {
    final db = await DbHelper().database;
    List<Map<String, Object?>>? result = await db?.query("kds_master");
    print(result);
    return result;
  }

  Future<List<Map<String, dynamic>>?> getKDSUserLinksDB() async {
    final db = await DbHelper().database;
    List<Map<String, Object?>>? result = await db?.query("kds_user_links");
    print(result);
    return result;
  }

  initDb2() async {
    var db = await DbHelper().database;
    await db?.execute("""
      CREATE TABLE ${DbConstant.KdsUserLinkstable}(
      ${DbConstant.KdsUserLinkstableCA} TEXT,
      ${DbConstant.KdsUserLinkstableUA} TEXT,
      ${DbConstant.KdsUserLinkstableSID} TEXT,
      ${DbConstant.KdsUserLinkstableLID} TEXT,
      ${DbConstant.KdsUserLinkstableIS} TEXT,
      ${DbConstant.KdsUserLinkstableId} INTEGER
      )
      """);
    print("${DbConstant.KdsUserLinkstable} table  is  created");




    await db?.execute("""
      CREATE TABLE ${DbConstant.ReciepesTable} (
      ${DbConstant.reciepesID} INTEGER,
      ${DbConstant.reciepesCA} TEXT,
      ${DbConstant.reciepesUA} TEXT,
      ${DbConstant.reciepesPIN} TEXT,
      ${DbConstant.reciepesLN} TEXT,
      ${DbConstant.reciepesT} TEXT,
      ${DbConstant.reciepesN} TEXT,
      ${DbConstant.reciepesAB} TEXT,
      ${DbConstant.reciepesD} TEXT,
      ${DbConstant.reciepesUM} TEXT,
      ${DbConstant.reciepesQP} TEXT,
      ${DbConstant.reciepesBD} TEXT,
      ${DbConstant.reciepesRUT} TEXT,
      ${DbConstant.reciepesBRV} TEXT,
      ${DbConstant.reciepesBCT} TEXT,
      ${DbConstant.reciepesRVC} TEXT,
      ${DbConstant.reciepesW} TEXT,
      ${DbConstant.reciepesGW} TEXT,
      ${DbConstant.reciepesNW} TEXT,
      ${DbConstant.reciepesC} TEXT,
      ${DbConstant.reciepesEFMR} TEXT,
      ${DbConstant.reciepesEFP} TEXT,
      ${DbConstant.reciepesUMF} TEXT,
      ${DbConstant.reciepesIN} TEXT,
      ${DbConstant.reciepesQPP} TEXT,
      ${DbConstant.reciepesE} TEXT,
      ${DbConstant.reciepesPIE} TEXT
      )
      """);
    print("${DbConstant.ReciepesTable} table  is  created");


    await db?.execute("""
      CREATE TABLE ${DbConstant.languageLablestable}(
      ${DbConstant.languagelabelCA} TIMESTAMP,
      ${DbConstant.languagelabelUA} TIMESTAMP,
      ${DbConstant.languagelabelL} TEXT,
      ${DbConstant.languagelabellID} INTEGER,
      ${DbConstant.languagelabelID} INTEGER
      )
      """);
    print("${DbConstant.languageLablestable} table  is  created");


    await db?.execute("""
      CREATE TABLE ${DbConstant.KdsMasterstable}(
      ${DbConstant.kdsmasterCA} TEXT,
      ${DbConstant.kdsmasterUA} TEXT,
      ${DbConstant.kdsmasterSID} TEXT,
      ${DbConstant.kdsmasterLID} TEXT,
      ${DbConstant.kdsmasterIS} TEXT,
      ${DbConstant.kdsmasterId} INTEGER
      )
      """);
    print("${DbConstant.KdsMasterstable} table  is  created");



    await db?.execute("""
      CREATE TABLE ${DbConstant.ItemsTable}(
      ${DbConstant.itemsCA} TIMESTAMP,
      ${DbConstant.itemsUA} TIMESTAP,
      ${DbConstant.itemsN} TEXT,
      ${DbConstant.itemsS} TEXT,
      ${DbConstant.itemsD} TEXT,
      ${DbConstant.itemsP} TEXT,
      ${DbConstant.itemsID} INTEGER
      )
      """);
    print("${DbConstant.ItemsTable} table  is  created");

    await db?.execute("""
      CREATE TABLE ${DbConstant.languageTable}(
      ${DbConstant.languageCA} TIMESTAMP,
      ${DbConstant.languageUA} TIMESTAMP,
      ${DbConstant.languageLN} TEXT,
      ${DbConstant.languageID} INTEGER
      )
      """);
    print("${DbConstant.languageTable} table  is  created");


    print("------------- FROM Dbhelper2  7 tables were created ------------");

  }
}
