import 'dart:io';

import 'package:hpostables/dbconstants/dbconstants.dart';
import 'package:hpostables/dbhelper/dbhelper.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DbHelper8{

  DbHelper8.getInstance();

  static final _instance = DbHelper8.getInstance();


  factory DbHelper8(){
    return _instance;
  }

  static Database? _database;






  insertAllDb8(String table, List<dynamic> objects) async {
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

  Future<List<Map<String, dynamic>>?> getProductHierarchyLinksDB() async {
    final db = await DbHelper().database;
    List<Map<String, Object?>>? result = await db?.query("product_hierarchy_links");
    print(result);
    return result;
  }

  Future<List<Map<String, dynamic>>?> getProductGroupMastersDB() async {
    final db = await DbHelper().database;
    List<Map<String, Object?>>? result = await db?.query("product_group_masters");
    print(result);
    return result;
  }





  initDb8() async  {

    var db = await DbHelper().database;

    await db?.execute("""
    CREATE TABLE ${DbConstant.ProductGroupMasters}(
    ${DbConstant.productgroupMasterCA} TEXT,
    ${DbConstant.productgroupMasterUA} TEXT,
    ${DbConstant.productgroupMasterPGL} TEXT,
    ${DbConstant.productgroupMasterPGC} TEXT,
    ${DbConstant.productgroupMasterE} TEXT,
    ${DbConstant.productgroupMasterIA} TEXT,
    ${DbConstant.productgroupMasterID} INTEGER
    )
    """);
    print("${DbConstant.ProductGroupMasters} table  is  created");

    await db?.execute("""
    CREATE TABLE ${DbConstant.ProductHierarchyLinkstable}(
    ${DbConstant.producthierarchylinkCA} TEXT,
    ${DbConstant.producthierarchylinkUA} TEXT,
    ${DbConstant.producthierarchylinkPID} TEXT,
    ${DbConstant.producthierarchylinkHID} TEXT,
    ${DbConstant.producthierarchylinkID} INTEGER
    )
    """);
    print("${DbConstant.ProductHierarchyLinkstable} table  is  created");

    await db?.execute("""
    CREATE TABLE ${DbConstant.ProductPictures}(
    ${DbConstant.productpicturesCA} TIMESTAMP,
    ${DbConstant.productpicturesUA} TIMESTAMP,
    ${DbConstant.productpicturesPID} TEXT,
    ${DbConstant.productpicturesIURL} TEXT,
    ${DbConstant.productpicturesIT} TEXT,
    ${DbConstant.productpicturesP} TEXT,
    ${DbConstant.productpicturesIA} TEXT,
    ${DbConstant.productpicturesID} INTEGER
    )
    """);
    print("${DbConstant.ProductPictures} table  is  created");


    await db?.execute("""
    CREATE TABLE ${DbConstant.ProductsTable}(
    ${DbConstant.productsCA} TIMESTAMP,
    ${DbConstant.productsUA} TIMESTAMP,
    ${DbConstant.productsN} TEXT,
    ${DbConstant.productsS} TEXT,
    ${DbConstant.productsD} TEXT,
    ${DbConstant.productsP} REAL,
    ${DbConstant.productsID} INTEGER
    )
    """);
    print("${DbConstant.ProductsTable} table  is  created");

    await db?.execute("""
    CREATE TABLE ${DbConstant.ProfilesTable}(
    ${DbConstant.profilesCA} TIMESTAMP,
    ${DbConstant.profilesUA} TIMESTAMP,
    ${DbConstant.profilesC} TEXT,
    ${DbConstant.profilesD} TEXT,
    ${DbConstant.profilesHT} TEXT,
    ${DbConstant.profilesSC} TEXT,
    ${DbConstant.profilesID} INTEGER
    )
    """);
    print("${DbConstant.ProfilesTable} table  is  created");
    print("-------------------------------- FROM Dbhelper8  5 tables were created ----------------------------");






  }

}