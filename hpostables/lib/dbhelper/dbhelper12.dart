import 'dart:io';

import 'package:hpostables/dbconstants/dbconstants.dart';
import 'package:hpostables/dbhelper/dbhelper.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DbHelper12 {
  DbHelper12.getInstance();

  static final _instance = DbHelper12.getInstance();

  factory DbHelper12() {
    return _instance;
  }

  static Database? _database;

  initDb12() async {
    var db = await DbHelper().database;

    await db?.execute("""
    CREATE TABLE ${DbConstant.Tablesetupstable}(
    ${DbConstant.tablesetupsCA} TIMESTAMP,
    ${DbConstant.tablesetupsUA} TIMESTAMP,
    ${DbConstant.tablesetupsLC} TEXT,
    ${DbConstant.tablesetupsD} TEXT,
    ${DbConstant.tablesetupsMG} TEXT,
    ${DbConstant.tablesetupsTAAM} TEXT,
    ${DbConstant.tablesetupsHT} TEXT,
    ${DbConstant.tablesetupsS} TEXT,
    ${DbConstant.tablesetupsID} INTEGER
    )
    """);
    print("${DbConstant.Tablesetupstable} table  is  created");

    await db?.execute("""
    CREATE TABLE ${DbConstant.TemporaryOrderDetailstable}(
    ${DbConstant.temporaryorderdetailsCA} TIMESTAMP,
    ${DbConstant.temporaryorderdetailsUA} TIMESTAMP,
    ${DbConstant.temporaryorderdetailsTN} TEXT,
    ${DbConstant.temporaryorderdetailsRN} TEXT,
    ${DbConstant.temporaryorderdetailsLN} TEXT,
    ${DbConstant.temporaryorderdetailsPC} TEXT,
    ${DbConstant.temporaryorderdetailsES} TEXT,
    ${DbConstant.temporaryorderdetailsDES} TEXT,
    ${DbConstant.temporaryorderdetailsUOM} TEXT,
    ${DbConstant.temporaryorderdetailsSN} TEXT,
    ${DbConstant.temporaryorderdetailsPTN} TEXT,
    ${DbConstant.temporaryorderdetailsQ} REAL,
    ${DbConstant.temporaryorderdetailsVP} REAL,
    ${DbConstant.temporaryorderdetailsDP} REAL,
    ${DbConstant.temporaryorderdetailsDA} REAL,
    ${DbConstant.temporaryorderdetailsNA} REAL,
    ${DbConstant.temporaryorderdetailsVA} REAL,
    ${DbConstant.temporaryorderdetailsA} REAL,
    ${DbConstant.temporaryorderdetailsAIE} TEXT,
    ${DbConstant.temporaryorderdetailsST} TEXT,
    ${DbConstant.temporaryorderdetailsLIE} TEXT,
    ${DbConstant.temporaryorderdetailsACL} TEXT,
    ${DbConstant.temporaryorderdetailsSS} TEXT,
    ${DbConstant.temporaryorderdetailsCID} TEXT,
    ${DbConstant.temporaryorderdetailsPIO} TEXT,
    ${DbConstant.temporaryorderdetailsPORFN} TEXT,
    ${DbConstant.temporaryorderdetailsID} INTEGER 
    )
    """);
    print("${DbConstant.TemporaryOrderDetailstable} table  is  created");

    await db?.execute("""
    CREATE TABLE ${DbConstant.TemporaryOrderHeaderstable}(
    ${DbConstant.temporaryorderheadersCA} TIMESTAMP,
    ${DbConstant.temporaryorderheadersUA} TIMESTAMP,
    ${DbConstant.temporaryorderheadersTN} TEXT,
    ${DbConstant.temporaryorderheadersRN} TEXT,
    ${DbConstant.temporaryorderheadersLN} TEXT,
    ${DbConstant.temporaryorderheadersPC} TEXT,
    ${DbConstant.temporaryorderheadersES} TEXT,
    ${DbConstant.temporaryorderheadersD} TEXT,
    ${DbConstant.temporaryorderheadersUOM} TEXT,
    ${DbConstant.temporaryorderheadersSN} TEXT,
    ${DbConstant.temporaryorderheadersPTN} TEXT,
    ${DbConstant.temporaryorderheadersQ} REAL,
    ${DbConstant.temporaryorderheadersVP} REAL,
    ${DbConstant.temporaryorderheadersDP} REAL,
    ${DbConstant.temporaryorderheadersDA} REAL,
    ${DbConstant.temporaryorderheadersNA} REAL,
    ${DbConstant.temporaryorderheadersVA} REAL,
    ${DbConstant.temporaryorderheadersA} REAL,
    ${DbConstant.temporaryorderheadersATIF} TEXT,
    ${DbConstant.temporaryorderheadersST} TEXT,
    ${DbConstant.temporaryorderheadersLCS} TEXT,
    ${DbConstant.temporaryorderheadersAD} TEXT,
    ${DbConstant.temporaryorderheadersSS} TEXT,
    ${DbConstant.temporaryorderheadersCOID} TEXT,
    ${DbConstant.temporaryorderheadersPIT} TEXT,
    ${DbConstant.temporaryorderheadersH} TEXT,
    ${DbConstant.temporaryorderheadersPOR} TEXT,
    ${DbConstant.temporaryorderheadersVAC} TEXT,
    ${DbConstant.temporaryorderheadersVAP} TEXT,
    ${DbConstant.temporaryorderheadersUPA} TEXT,
    ${DbConstant.temporaryorderheadersUPWT} TEXT,
    ${DbConstant.temporaryorderheadersGA} TEXT,
    ${DbConstant.temporaryorderheadersAWT} TEXT,
    ${DbConstant.temporaryorderheadersTA} TEXT,
    ${DbConstant.temporaryorderheadersPT} INTEGER,
    ${DbConstant.temporaryorderheadersKRID} TEXT,
    ${DbConstant.temporaryorderheadersDN} TEXT,
    ${DbConstant.temporaryorderheadersDTL} TEXT,
    ${DbConstant.temporaryorderheadersID} INTEGER PRIMARY KEY,
    ${DbConstant.temporaryorderheadersVC} TEXT
    )
    """);
    print("${DbConstant.TemporaryOrderHeaderstable} table  is  created");

    await db?.execute("""
    CREATE TABLE ${DbConstant.TemporaryTransactiondeliverytable}(
    ${DbConstant.temporarytransactiondeliveryCA} TIMESTAMP,
    ${DbConstant.temporarytransactiondeliveryUA} TIMESTAMP,
    ${DbConstant.temporarytransactiondeliveryCID} TEXT,
    ${DbConstant.temporarytransactiondeliveryCc} TEXT,
    ${DbConstant.temporarytransactiondeliveryNO} TEXT,
    ${DbConstant.temporarytransactiondeliveryFN} TEXT,
    ${DbConstant.temporarytransactiondeliveryLN} TEXT,
    ${DbConstant.temporarytransactiondeliveryS} INTEGER,
    ${DbConstant.temporarytransactiondeliveryN} TEXT,
    ${DbConstant.temporarytransactiondeliveryC} TEXT,
    ${DbConstant.temporarytransactiondeliveryCC} INTEGER,
    ${DbConstant.temporarytransactiondeliveryVR} TEXT,
    ${DbConstant.temporarytransactiondeliveryMN} TEXT,
    ${DbConstant.temporarytransactiondeliveryAMN} TEXT,
    ${DbConstant.temporarytransactiondeliveryE} TEXT,
    ${DbConstant.temporarytransactiondeliverySS} INTEGER,
    ${DbConstant.temporarytransactiondeliveryCB} TEXT,
    ${DbConstant.temporarytransactiondeliveryCD} TEXT,
    ${DbConstant.temporarytransactiondeliveryUD} TEXT,
    ${DbConstant.temporarytransactiondeliveryZRID} TEXT,
    ${DbConstant.temporarytransactiondeliveryid} INTEGER 
    )
    """);
    print("${DbConstant.TemporaryTransactiondeliverytable} table  is  created");

    await db?.execute("""
    CREATE TABLE ${DbConstant.TemporaryTransactionHeaderstable}(
    ${DbConstant.temporarytransactionheaderCA} TIMESTAMP,
    ${DbConstant.temporarytransactionheaderUA} TIMESTAMP,
    ${DbConstant.temporarytransactionheaderTN} TEXT,
    ${DbConstant.temporarytransactionheaderRN} TEXT,
    ${DbConstant.temporarytransactionheaderSN} TEXT,
    ${DbConstant.temporarytransactionheaderPOT} TEXT,
    ${DbConstant.temporarytransactionheaderSID} TEXT,
    ${DbConstant.temporarytransactionheaderTD} TIMESTAMP,
    ${DbConstant.temporarytransactionheaderOD} TIMESTAMP,
    ${DbConstant.temporarytransactionheaderCN} TEXT,
    ${DbConstant.temporarytransactionheaderNA} REAL,
    ${DbConstant.temporarytransactionheaderGA} REAL,
    ${DbConstant.temporarytransactionheaderP} REAL,
    ${DbConstant.temporarytransactionheaderD} REAL,
    ${DbConstant.temporarytransactionheaderTQ} REAL,
    ${DbConstant.temporarytransactionheaderES} TEXT,
    ${DbConstant.temporarytransactionheaderLIL} TEXT,
    ${DbConstant.temporarytransactionheaderNPL} TEXT,
    ${DbConstant.temporarytransactionheaderTNO} TEXT,
    ${DbConstant.temporarytransactionheaderTC} TEXT,
    ${DbConstant.temporarytransactionheaderNOC} TEXT,
    ${DbConstant.temporarytransactionheaderATN} TEXT,
    ${DbConstant.temporarytransactionheaderTG} TEXT,
    ${DbConstant.temporarytransactionheaderKS} TEXT,
    ${DbConstant.temporarytransactionheaderON} TEXT,
    ${DbConstant.temporarytransactionheaderOCS} TEXT,
    ${DbConstant.temporarytransactionheaderODID} TEXT,
    ${DbConstant.temporarytransactionheaderVA} TEXT,
    ${DbConstant.temporarytransactionheaderZID} TEXT,
    ${DbConstant.temporarytransactionheaderTT} TIMESTAMP,
    ${DbConstant.temporarytransactionheaderID} INTEGER ,
    ${DbConstant.temporarytransactionheaderVC} TEXT
    )
    """);
    print("${DbConstant.TemporaryTransactionHeaderstable} table  is  created");

    print(
        "---------------------- FROM Dbhelper12  5 tables were created ----------------------------");
  }
}
