import 'dart:io';

import 'package:hpostables/dbconstants/dbconstants.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DbHelper{

  DbHelper.getInstance();

  // static final DbHelper _instance = DbHelper._internal();

  // DbHelper._internal();

  static final _instance = DbHelper.getInstance();

  static final _databaseVersion = 2;
  static final _databaseName ="MyDataBase.db";

  String? path;

  factory DbHelper(){
    return _instance;
  }

  static Database? _database;

  Future<Database?> get database async {


    _database = await _initDatabase();
    return _database;
  }

  // _initDatabase() async {
  //   Directory documentsDirectory = await getApplicationDocumentsDirectory();
  //   path = join(documentsDirectory.path, _databaseName);
  //
  //   return await openDatabase(path!,version: _databaseVersion, onCreate: _onCreate);
  //
  // }

  _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    path = join(documentsDirectory.path, _databaseName);

    return await openDatabase(path!, version: _databaseVersion, onCreate: _onCreate);
  }



  // first5tables(Function(Database db, int version) onCreate, Type int)async{
  //
  // }

  Future _onCreate(Database db, int version) async {



    await db.execute(""" 
    CREATE TABLE ${DbConstant.tableName}(
    ${DbConstant.columnId} INTEGER,
    ${DbConstant.columnCreatedAt} TEXT,
    ${DbConstant.columnUpdatedAt} TEXT,
    ${DbConstant.columnParentItem} TEXT,
    ${DbConstant.columnLineNo} TEXT,
    ${DbConstant.columnType} TEXT,
    ${DbConstant.columnNo} TEXT,
    ${DbConstant.columnAssembly} TEXT,
    ${DbConstant.columnDescription} TEXT,
    ${DbConstant.columnUnitofMeasure} TEXT,
    ${DbConstant.columnQuantityPer} TEXT,
    ${DbConstant.columnBomDescription} TEXT,
    ${DbConstant.columnResourceUsage} TEXT,
    ${DbConstant.columnBomRecipeversion} TEXT,
    ${DbConstant.columnBomComponentType} TEXT,
    ${DbConstant.columnRecipeVersioncode} TEXT,
    ${DbConstant.columnWastage} TEXT,
    ${DbConstant.columnGrossWeigth} TEXT,
    ${DbConstant.columnNetWeight} TEXT,
    ${DbConstant.columnCost} TEXT,
    ${DbConstant.columnExcludefromMenu} TEXT,
    ${DbConstant.columnExcludefromPortionWeight} TEXT,
    ${DbConstant.columnUnaffy} TEXT,
    ${DbConstant.columnItemNo} TEXT,
    ${DbConstant.columnQtyPerRecipe} TEXT,
    ${DbConstant.columnExclusion} TEXT,
    ${DbConstant.columnPriceOnExclusion} TEXT,
    ${DbConstant.columnCategory} TEXT
    )
    """);
    print("${DbConstant.tableName} table  is  created");

    await db.execute("""
    CREATE TABLE ${DbConstant.AddonitemTable}(
    ${DbConstant.columncreatedAt} TIMESTAMP,
    ${DbConstant.columnUPDATEDat} TIMESTAMP,
    ${DbConstant.columnAddonItemId} TEXT,
    ${DbConstant.columnCompanyCode} TEXT,
    ${DbConstant.columnMainitemNo} TEXT,
    ${DbConstant.columnSubItemNo} TEXT,
    ${DbConstant.columnAdditionalPrice} TEXT,
    ${DbConstant.columnAdditionalPriceIncluVat} TEXT,
    ${DbConstant.columnUom} TEXT,
    ${DbConstant.column_Id} INTEGER
 
 )
  """);
    print("${DbConstant.AddonitemTable} table  is  created");


     await db.execute("""
     CREATE TABLE ${DbConstant.BackOfficeTable}(
     ${DbConstant.backOfficeCreatedAt} TEXT,
     ${DbConstant.backOfficeUpdatedAt} TEXT,
     ${DbConstant.backOfficeTableName} TEXT,
     ${DbConstant.backOfficeRole} TEXT,
     ${DbConstant.backofficeActive} TEXT,
     ${DbConstant.backofficeID} INTEGER
     )
     """);
    print("${DbConstant.BackOfficeTable} table  is  created");

    await db.execute("""
   CREATE TABLE ${DbConstant.billOfMaterialTableName}(
   ${DbConstant.billCreatedAT} TIMESTAMP,
   ${DbConstant.billUpdatedAT} TIMESTAMP,
   ${DbConstant.billBomID} TEXT,
   ${DbConstant.billcomnapyCode} TEXT,
   ${DbConstant.billMainitem} TEXT,
   ${DbConstant.billSubitem} TEXT,
   ${DbConstant.billUom} TEXT,
   ${DbConstant.billQuantityper} TEXT,
   ${DbConstant.billStatus} TEXT,
   ${DbConstant.billCreatedBy} TEXT,
   ${DbConstant.billcreatedDATE} TEXT,
   ${DbConstant.billupadeby} TEXT,
   ${DbConstant.billupdatedate} TEXT,
   ${DbConstant.billispotional} TEXT,
   ${DbConstant.billID} INTEGER
   )
   """);
    print("${DbConstant.billOfMaterialTableName} table  is  created");



    await db.execute("""
     CREATE TABLE ${DbConstant.BranchTableName}(
     ${DbConstant.branchcratedat} TIMESTAMP,
     ${DbConstant.branchupdatedat} TIMESTAMP,
     ${DbConstant.branchlableid} INTEGER,
     ${DbConstant.brandchshiftID} INTEGER,
     ${DbConstant.branchId} INTEGER

 )

 """);
    print("${DbConstant.BranchTableName} table  is  created");

    print("FROM Dbhelper 5 tables were created");


  }


  deleteTable(String table) async {
    if (_database == null) _database = await _database;
    _database?.delete(table);
  }





  insertAll(String table, List<dynamic> objects) async {
    List<dynamic> listRes = [];
    var res;
    try {
      // if (_database == null) {
      //   await database;
      // }

      await _database?.transaction((db) async {
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

  Future<List<Map<String, dynamic>>?> getAddonsDB() async {
    final db = await database;
    List<Map<String, Object?>>? result = await db?.query("addons");
    print(result);
    return result;
  }


  Future<List<Map<String, dynamic>>?> getBackofficeDB() async {
    final db = await database;
    List<Map<String, Object?>>? result = await db?.query("backofficetables");
    print(result);
    return result;
  }



  initDb() async {
    if( database == null) {
      await database;
    }

  }

}