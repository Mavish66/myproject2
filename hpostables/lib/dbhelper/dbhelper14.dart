import 'dart:io';

import 'package:hpostables/dbconstants/dbconstants.dart';
import 'package:hpostables/dbhelper/dbhelper.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DbHelper14 {
  DbHelper14.getInstance();

  static final _instance = DbHelper14.getInstance();

  factory DbHelper14() {
    return _instance;
  }

  static Database? _database;

  insertAllDb14(String table, List<dynamic> objects) async {
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

  Future<List<Map<String, dynamic>>?> getItemModifierHeaderDB() async {
    final db = await DbHelper().database;
    List<Map<String, Object?>>? result =
        await db?.query("item_modifier_header");
    print(result);
    return result;
  }

  initDb14() async {
    var db = await DbHelper().database;

    await db?.execute("""
    CREATE TABLE ${DbConstant.ErpItemMastersTable}(
    ${DbConstant.erpitemmastersCA} TIMESTAMP,
    ${DbConstant.erpitemmastersUA} TIMESTAMP,
    ${DbConstant.erpitemmastersAD} TEXT,
    ${DbConstant.erpitemmastersBN} TEXT,
    ${DbConstant.erpitemmastersBC} TEXT,
    ${DbConstant.erpitemmastersCN} TEXT,
    ${DbConstant.erpitemmastersCM} TEXT,
    ${DbConstant.erpitemmastersCC} TEXT,
    ${DbConstant.erpitemmastersCD} TEXT,
    ${DbConstant.erpitemmastersIP} TEXT,
    ${DbConstant.erpitemmastersIU} TEXT,
    ${DbConstant.erpitemmastersIC} TEXT,
    ${DbConstant.erpitemmastersID} TEXT,
    ${DbConstant.erpitemmastersIG} TEXT,
    ${DbConstant.erpitemmastersITMG} TEXT,
    ${DbConstant.erpitemmastersIN} TEXT,
    ${DbConstant.erpitemmastersMDT} TEXT,
    ${DbConstant.erpitemmastersPP} TEXT,
    ${DbConstant.erpitemmastersPU} TEXT,
    ${DbConstant.erpitemmastersSP} TEXT,
    ${DbConstant.erpitemmastersSU} TEXT,
    ${DbConstant.erpitemmastersSNAME} TEXT,
    ${DbConstant.erpitemmastersSN} TEXT,
    ${DbConstant.erpitemmastersSL} TEXT,
    ${DbConstant.erpitemmastersVN} TEXT,
    ${DbConstant.erpitemmastersId} INTEGER
    )
    """);
    print("${DbConstant.ErpItemMastersTable} table  is  created");

    await db?.execute("""
    CREATE TABLE ${DbConstant.ItemGroupingsTable}(
    ${DbConstant.itemgroupingsCA} TIMESTAMP,
    ${DbConstant.itemgroupingsUA} TIMESTAMP,
    ${DbConstant.itemgroupingsIGID} TEXT,
    ${DbConstant.itemgroupingsCC} TEXT,
    ${DbConstant.itemgroupingsPID} TEXT,
    ${DbConstant.itemgroupingsL} TEXT,
    ${DbConstant.itemgroupingsC} TEXT,
    ${DbConstant.itemgroupingsN} TEXT,
    ${DbConstant.itemgroupingsNT} TEXT,
    ${DbConstant.itemgroupingsS} TEXT,
    ${DbConstant.itemgroupingsCB} TEXT,
    ${DbConstant.itemgroupingsCD} TEXT,
    ${DbConstant.itemgroupingsUB} TEXT,
    ${DbConstant.itemgroupingsUD} TEXT,
    ${DbConstant.itemgroupingsID} INTEGER
    )
    """);
    print("${DbConstant.ItemGroupingsTable} table  is  created");

    await db?.execute("""
      CREATE TABLE ${DbConstant.ItemModifierHeadertable} (
      ${DbConstant.itemmodifierheaderID} INTEGER,
      ${DbConstant.itemmodifierheaderCA} TEXT,
      ${DbConstant.itemmodifierheaderUA} TEXT,
      ${DbConstant.itemmodifierC} TEXT,
      ${DbConstant.itemmodifierDSC} TEXT,
      ${DbConstant.itemmodifierPRMT} TEXT,
      ${DbConstant.itemmodifierDP} TEXT,
      ${DbConstant.itemmodifierOPT} TEXT,
      ${DbConstant.itemmodifierMINS} TEXT,
      ${DbConstant.itemmodifierMSS} TEXT,
      ${DbConstant.itemmodifierSD} TEXT,
      ${DbConstant.itemmodifierED} TEXT,
      ${DbConstant.itemmodifierMS} TEXT,
      ${DbConstant.itemmodifierT} TEXT,
      ${DbConstant.itemmodifierP} TEXT,
      ${DbConstant.itemmodifierUOM} TEXT,
      ${DbConstant.itemmodifierIN} TEXT
      )
     """);
    print("${DbConstant.ItemModifierHeadertable} table  is  created");

    await db?.execute("""
    CREATE TABLE ${DbConstant.ItemModifiersTable}(
    ${DbConstant.itemmodifiersCA} TIMESTAMP,
    ${DbConstant.itemmodifiersUA} TIMESTAMP,
    ${DbConstant.itemmodifiersID} INTEGER PRIMARY KEY
    )
    """);
    print("${DbConstant.ItemModifiersTable} table  is  created");

    await db?.execute("""
    CREATE TABLE ${DbConstant.devicesTable}(
    ${DbConstant.devicesCA} TIMESTAMP,
    ${DbConstant.devicesUpdateAt} TIMESTAMP,
    ${DbConstant.devicesModal} TEXT,
    ${DbConstant.devicesPlatform} TEXT,
    ${DbConstant.devicesUuid} TEXT,
    ${DbConstant.devicesId} INTEGER,
    ${DbConstant.devicesVersion} TEXT,
    ${DbConstant.devicesManufacturer} TEXT,
    ${DbConstant.devicesIsVirtual} TEXT,
    ${DbConstant.devicesSerial} TEXT,
    ${DbConstant.devicesSdkVersion} TEXT,
    ${DbConstant.devicesAppbundle} TEXT,
    ${DbConstant.devicesIsaction} TEXT,
    ${DbConstant.devicesDeviseToken} TEXT,
    ${DbConstant.devicesTenantId} TEXT,
    ${DbConstant.devicesCustmerId} TEXT,
    ${DbConstant.devicesDeviceImage} TEXT,
    ${DbConstant.devicesPushId}  TEXT
    )
    """);
    print("${DbConstant.devicesTable} table  is  created");
    print(
        "-------------------------- FROM Dbhelper14  5 tables were created-------------------------");
  }
}
