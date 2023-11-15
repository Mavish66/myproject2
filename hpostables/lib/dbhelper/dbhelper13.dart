import 'dart:io';

import 'package:hpostables/dbconstants/dbconstants.dart';
import 'package:hpostables/dbhelper/dbhelper.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DbHelper13 {
  DbHelper13.getInstance();

  static final _instance = DbHelper13.getInstance();

  factory DbHelper13() {
    return _instance;
  }

  static Database? _database;

  initDb13() async {
    var db = await DbHelper().database;

    await db?.execute("""
    CREATE TABLE ${DbConstant.TransactionAdditionalInfostable}(
    ${DbConstant.transactionadditonalinfoCA} TIMESTAMP,
    ${DbConstant.transactionadditonalinfoUA} TIMESTAMP,
    ${DbConstant.transactionadditonalinfoTN} TEXT,
    ${DbConstant.transactionadditonalinfoLN} TEXT,
    ${DbConstant.transactionadditonalinfoRN} TEXT,
    ${DbConstant.transactionadditonalinfoAIT} TEXT,
    ${DbConstant.transactionadditonalinfoAPC} TEXT,
    ${DbConstant.transactionadditonalinfoAT} TEXT,
    ${DbConstant.transactionadditonalinfoEPC} TEXT,
    ${DbConstant.transactionadditonalinfoID} INTEGER
    )
    """);
    print("${DbConstant.TransactionAdditionalInfostable} table  is  created");

    await db?.execute("""
    CREATE TABLE ${DbConstant.TransactionItemdetailstable}(
    ${DbConstant.transactionitemdetailsCA} TIMESTAMP,
    ${DbConstant.transactionitemdetailsUA} TIMESTAMP,
    ${DbConstant.transactionitemdetailsTN} TEXT,
    ${DbConstant.transactionitemdetailsRN} TEXT,
    ${DbConstant.transactionitemdetailsLN} TEXT,
    ${DbConstant.transactionitemdetailsPC} TEXT,
    ${DbConstant.transactionitemdetailsES} TEXT,
    ${DbConstant.transactionitemdetailsD} TEXT,
    ${DbConstant.transactionitemdetailsUOM} TEXT,
    ${DbConstant.transactionitemdetailsSN} TEXT,
    ${DbConstant.transactionitemdetailsPTN} TEXT,
    ${DbConstant.transactionitemdetailsQ} REAL,
    ${DbConstant.transactionitemdetailsVP} REAL,
    ${DbConstant.transactionitemdetailsDP} REAL,
    ${DbConstant.transactionitemdetailsDA} REAL,
    ${DbConstant.transactionitemdetailsNA} REAL,
    ${DbConstant.transactionitemdetailsVA} REAL,
    ${DbConstant.transactionitemdetailsA} REAL,
    ${DbConstant.transactionitemdetailsAIE} TEXT,
    ${DbConstant.transactionitemdetailsST} TEXT,
    ${DbConstant.transactionitemdetailsLE} TEXT,
    ${DbConstant.transactionitemdetailsACLE} TEXT,
    ${DbConstant.transactionitemdetailsss} TEXT,
    ${DbConstant.transactionitemdetailsId} INTEGER
    )
    """);
    print("${DbConstant.TransactionItemdetailstable} table  is  created");

    await db?.execute("""
    CREATE TABLE ${DbConstant.TransactionpaymentDetailstable}(
    ${DbConstant.transactionpaymentdetailsCA} TIMESTAMP,
    ${DbConstant.transactionpaymentdetailsUA} TIMESTAMP,
    ${DbConstant.transactionpaymentdetailsTN} TEXT,
    ${DbConstant.transactionpaymentdetailsLN} TEXT,
    ${DbConstant.transactionpaymentdetailsRN} TEXT,
    ${DbConstant.transactionpaymentdetailsCN} TEXT,
    ${DbConstant.transactionpaymentdetailsER} REAL,
    ${DbConstant.transactionpaymentdetailsAT} REAL,
    ${DbConstant.transactionpaymentdetailsCC} TEXT,
    ${DbConstant.transactionpaymentdetailsAIC} REAL,
    ${DbConstant.transactionpaymentdetailsCOA} TEXT,
    ${DbConstant.transactionpaymentdetailsDATE} TEXT,
    ${DbConstant.transactionpaymentdetailsT} TEXT,
    ${DbConstant.transactionpaymentdetailsSN} TEXT,
    ${DbConstant.transactionpaymentdetailsPTN} TEXT,
    ${DbConstant.transactionpaymentdetailsSID} TEXT,
    ${DbConstant.transactionpaymentdetailsAC} TEXT,
    ${DbConstant.transactionpaymentdetailsTIPS} TEXT,
    ${DbConstant.transactionpaymentdetailsZRID} TEXT,
    ${DbConstant.transactionpaymentdetailsID} INTEGER
    )
    """);
    print("${DbConstant.TransactionpaymentDetailstable} table  is  created");

    await db?.execute("""
    CREATE TABLE ${DbConstant.transactionTableCancelledsTable}(
    ${DbConstant.transactionTableCancelledsCA} TIMESTAMP,
    ${DbConstant.transactionTableCancelledsUpdateAt} TIMESTAMP,
    ${DbConstant.transactionTableCancelledsTransactionN} TEXT,
    ${DbConstant.transactionTableCancelledsLineN} TEXT,
    ${DbConstant.transactionTableCancelledsReceiptN} TEXT,
    ${DbConstant.transactionTableCancelledsCR} TEXT,
    ${DbConstant.transactionTableCancelledsC} REAL,
    ${DbConstant.transactionTableCancelledsCNA} REAL,
    ${DbConstant.transactionTableCancelledsCQty} REAL,
    ${DbConstant.transactionTableCancelledsId} INTEGER
    )
    """);
    print("${DbConstant.transactionTableCancelledsTable} table  is  created");

    await db?.execute("""
    CREATE TABLE ${DbConstant.ErpItemMastertable}(
    ${DbConstant.erpitemmasterBN} TEXT,
    ${DbConstant.erpitemmasterBC} TEXT,
    ${DbConstant.erpitemmasterCN} TEXT,
    ${DbConstant.erpitemmasterCM} TEXT,
    ${DbConstant.erpitemmasterCc} TEXT,
    ${DbConstant.erpitemmasterCDT} TEXT,
    ${DbConstant.erpitemmasterIP} TEXT,
    ${DbConstant.erpitemmasterIU} TEXT,
    ${DbConstant.erpitemmasterIG} TEXT,
    ${DbConstant.erpitemmasterIMG} TEXT,
    ${DbConstant.erpitemmasterMDT} TEXT,
    ${DbConstant.erpitemmasterSN} TEXT,
    ${DbConstant.erpitemmasterSL} TEXT,
    ${DbConstant.erpitemmasterVN} TEXT,
    ${DbConstant.erpitemmasterAD} TEXT,
    ${DbConstant.erpitemmasterCA} TIMESTAMP,
    ${DbConstant.erpitemmasterUA} TIMESTAMP,
    ${DbConstant.erpitemmasterIC} TEXT,
    ${DbConstant.erpitemmasterD} TEXT,
    ${DbConstant.erpitemmasterIN} TEXT,
    ${DbConstant.erpitemmasterPP} TEXT,
    ${DbConstant.erpitemmasterPU} TEXT,
    ${DbConstant.erpitemmasterSP} TEXT,
    ${DbConstant.erpitemmasterSU} TEXT,
    ${DbConstant.erpitemmasterSName} TEXT,
    ${DbConstant.erpitemmasterID} INTEGER
    )
    """);
    print("${DbConstant.ErpItemMastertable} table  is  created");
    print(
        "------------------------ FROM Dbhelper13  5 tables were created -------------------------------");
  }
}
