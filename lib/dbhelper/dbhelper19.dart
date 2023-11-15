import 'dart:io';

import 'package:hpostables/dbconstants/dbconstants.dart';
import 'package:hpostables/dbhelper/dbhelper.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DbHelper19 {
  DbHelper19.getInstance();

  static final _instance = DbHelper19.getInstance();

  factory DbHelper19() {
    return _instance;
  }

  static Database? _database;

  initDb19() async {
    var db = await DbHelper().database;

    await db?.execute("""
    CREATE TABLE ${DbConstant.IntegrationDetailsTable} (
    ${DbConstant.integrationdetailsCA} TIMESTAMP,
    ${DbConstant.integrationdetailsUA} TIMESTAMP,
    ${DbConstant.integrationdetailsFFN} TEXT,
    ${DbConstant.integrationdetailsFFI} TEXT,
    ${DbConstant.integrationdetailsISA} TEXT,
    ${DbConstant.integrationdetailsEFN} TEXT,
    ${DbConstant.integrationdetailsID} INTEGER
    )
    """);
    print("${DbConstant.IntegrationDetailsTable} table  is  created");

    await db?.execute("""
    CREATE TABLE ${DbConstant.IntegrationHeadersTable} (
    ${DbConstant.integrationHeaderCA} TIMESTAMP,
    ${DbConstant.integrationHeaderUA} TIMESTAMP,
    ${DbConstant.integrationHeaderURL} TEXT,
    ${DbConstant.integrationHeaderTN} TEXT,
    ${DbConstant.integrationHeaderTI} TEXT,
    ${DbConstant.integrationHeaderFID} TEXT,
    ${DbConstant.integrationHeaderIA} TEXT,
    ${DbConstant.integrationHeaderUID} TEXT,
    ${DbConstant.integrationHeaderSID} TEXT,
    ${DbConstant.integrationHeaderID} INTEGER
    )
    """);
    print("${DbConstant.IntegrationHeadersTable} table  is  created");

    await db?.execute("""
    CREATE TABLE ${DbConstant.ItemCategoryMastersTable} (
    ${DbConstant.itemcategorymasterCA} TIMESTAMP,
    ${DbConstant.itemcategorymasterUA} TIMESTAMP,
    ${DbConstant.itemcategorymasterICL} TEXT,
    ${DbConstant.itemcategorymasterICC} TEXT,
    ${DbConstant.itemcategorymasterEXTRA} TEXT,
    ${DbConstant.itemcategorymasterIA} TEXT,
    ${DbConstant.itemcategorymasterID} INTEGER
    )
    """);
    print("${DbConstant.ItemCategoryMastersTable} table  is  created");
    print(
        "---------------FROM Dbhelper19  3 tables were created-------------------");
  }
}
