import 'dart:io';

import 'package:hpostables/dbconstants/dbconstants.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DbHelper20{

  DbHelper20.getInstance();

  static final _instance = DbHelper20.getInstance();

  static final _databaseVersion = 2;
  static final _databaseName ="MyDataBase20.db";

  String? path;

  factory DbHelper20(){
    return _instance;
  }

  static Database? _database;

  Future<Database?> get database async {
     

    _database = await _initDatabase();
    return _database;
  }

  _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    path = join(documentsDirectory.path, _databaseName);

    return await openDatabase(path!,version: _databaseVersion, onCreate: _onCreate);

  }
  //INTEGER error at customer addresses table
  Future _onCreate(Database db, int version) async {
    await db.execute("""
  CREATE TABLE ${DbConstant.CustomerAddressesTable} (
  ${DbConstant.customeraddressesCA} TEXT,
  ${DbConstant.customeraddressesUA} TEXT,
  ${DbConstant.customeraddressesa} TEXT,
  ${DbConstant.customeraddressesCc} TEXT,
  ${DbConstant.customeraddressesCID} TEXT,
  ${DbConstant.customeraddressesCN} TEXT,
  ${DbConstant.customeraddressesC} TEXT,
  ${DbConstant.customeraddressesFNA} TEXT,
  ${DbConstant.customeraddressesLN} TEXT,
  ${DbConstant.customeraddressesSA} TEXT,
  ${DbConstant.customeraddressesLINE} TEXT,
  ${DbConstant.customeraddressesLTW} TEXT,
  ${DbConstant.customeraddressesCC} TEXT,
  ${DbConstant.customeraddressesGHID} TEXT,
  ${DbConstant.customeraddressesBC} TEXT,
  ${DbConstant.customeraddressesLM} TEXT,
  ${DbConstant.customeraddressesLA} TEXT,
  ${DbConstant.customeraddressesL} TEXT,
  ${DbConstant.customeraddressesGA} TEXT,
  ${DbConstant.customeraddressesFNO} TEXT,
  ${DbConstant.customeraddressesFN} TEXT,
  ${DbConstant.customeraddressesPBN} TEXT,
  ${DbConstant.customeraddressesE} TEXT,
  ${DbConstant.customeraddressesP} TEXT,
  ${DbConstant.customeraddressesBSN} TEXT,
  ${DbConstant.customeraddressesB} TEXT,
  ${DbConstant.customeraddressesS} TEXT,
  ${DbConstant.customeraddressesSS} INTEGER,
  ${DbConstant.customeraddressesDB} TEXT,
  ${DbConstant.customeraddressesCD} TEXT,
  ${DbConstant.customeraddressesUB} TEXT,
  ${DbConstant.customeraddressesUD} TEXT,
  ${DbConstant.customeraddressesID} INTEGER
  )
  """);
    print("${DbConstant.CustomerAddressesTable} table  is  created");


//     // Integer error at temporary transaction delivery address table
    await db.execute("""
CREATE TABLE ${DbConstant.TemporaryTransactiondeliveryaddress}(
  ${DbConstant.temporarytransactiondeliveryaddressesCA} TIMESTAMP,
  ${DbConstant.temporarytransactiondeliveryaddressesUA} TIMESTAMP,
  ${DbConstant.temporarytransactiondeliveryaddressesAID} INTEGER,
  ${DbConstant.temporarytransactiondeliveryaddressesCMCODE} TEXT,
  ${DbConstant.temporarytransactiondeliveryaddressesCID} INTEGER,
  ${DbConstant.temporarytransactiondeliveryaddressesCUSTNO} TEXT,
  ${DbConstant.temporarytransactiondeliveryaddressesCODE} TEXT,
  ${DbConstant.temporarytransactiondeliveryaddressesFN} TEXT,
  ${DbConstant.temporarytransactiondeliveryaddressesLN} TEXT,
  ${DbConstant.temporarytransactiondeliveryaddressesSALU} TEXT,
  ${DbConstant.temporarytransactiondeliveryaddressesLINE} TEXT,
  ${DbConstant.temporarytransactiondeliveryaddressesLT} TEXT,
  ${DbConstant.temporarytransactiondeliveryaddressesCC} TEXT,
  ${DbConstant.temporarytransactiondeliveryaddressesGHID} INTEGER,
  ${DbConstant.temporarytransactiondeliveryaddressesBC} TEXT,
  ${DbConstant.temporarytransactiondeliveryaddressesLM} TEXT,
  ${DbConstant.temporarytransactiondeliveryaddressesLAT} TEXT,
  ${DbConstant.temporarytransactiondeliveryaddressesLONG} TEXT,
  ${DbConstant.temporarytransactiondeliveryaddressesGA} TEXT,
  ${DbConstant.temporarytransactiondeliveryaddressesFLR} TEXT,
  ${DbConstant.temporarytransactiondeliveryaddressesFNO} TEXT,
  ${DbConstant.temporarytransactiondeliveryaddressesPN} TEXT,
  ${DbConstant.temporarytransactiondeliveryaddressesAPN} TEXT,
  ${DbConstant.temporarytransactiondeliveryaddressesMN} TEXT,
  ${DbConstant.temporarytransactiondeliveryaddressesAMN} TEXT,
  ${DbConstant.temporarytransactiondeliveryaddressesFNno} TEXT,
  ${DbConstant.temporarytransactiondeliveryaddressesPBN} TEXT,
  ${DbConstant.temporarytransactiondeliveryaddressesE} TEXT,
  ${DbConstant.temporarytransactiondeliveryaddressesP} INTEGER,
  ${DbConstant.temporarytransactiondeliveryaddressesBS} INTEGER,
  ${DbConstant.temporarytransactiondeliveryaddressesB} INTEGER,
  ${DbConstant.temporarytransactiondeliveryaddressesSH} INTEGER,
  ${DbConstant.temporarytransactiondeliveryaddressesS} INTEGER,
  ${DbConstant.temporarytransactiondeliveryaddressesCB} TEXT,
  ${DbConstant.temporarytransactiondeliveryaddressesCD} TEXT,
  ${DbConstant.temporarytransactiondeliveryaddressesUB} TEXT,
  ${DbConstant.temporarytransactiondeliveryaddressUD} TEXT,
  ${DbConstant.temporarytransactiondeliveryaddressesid} INTEGER
)
""");
    print("${DbConstant.TemporaryTransactiondeliveryaddress} table  is  created");

//     await db.execute("""
// CREATE TABLE ${DbConstant.ItemLedgersTable} (
//   ${DbConstant.itemledgersCA} TIMESTAMP,
//   ${DbConstant.itemledgersUA} TIMESTAMP,
//   ${DbConstant.itemledgersEN} TEXT,
//   ${DbConstant.itemledgersIN} TEXT,
//   ${DbConstant.itemledgersPD} TEXT,
//   ${DbConstant.itemledgersET} TEXT,
//   ${DbConstant.itemledgersSN} TEXT,
//   ${DbConstant.itemledgersDN} TEXT,
//   ${DbConstant.itemledgersD} TEXT,
//   ${DbConstant.itemledgersLC} TEXT,
//   ${DbConstant.itemledgersQ} TEXT,
//   ${DbConstant.itemledgersRQ} TEXT,
//   ${DbConstant.itemledgersIQ} TEXT,
//   "${DbConstant.itemledgersAE}" TEXT,
//   ${DbConstant.itemledgersO} TEXT,
//   ${DbConstant.itemledgersGD1} TEXT,
//   ${DbConstant.itemledgersGD2} TEXT,
//   ${DbConstant.itemledgersP} TEXT,
//   ${DbConstant.itemledgersSST} TEXT,
//   ${DbConstant.itemledgersDS} TEXT,
//   ${DbConstant.itemledgersTTT} TEXT,
//   ${DbConstant.itemledgersTM} TEXT,
//  "${DbConstant.itemledgersCRC}" TEXT,
//  "${DbConstant.itemledgersEEP}" TEXT,
//   ${DbConstant.itemledgersDD} TEXT,
//   ${DbConstant.itemledgersED} TEXT,
//   ${DbConstant.itemledgersA} TEXT,
//   ${DbConstant.itemledgersTS} TEXT,
//   ${DbConstant.itemledgersNS} TEXT,
//   ${DbConstant.itemledgersRQQ} TEXT,
//   ${DbConstant.itemledgersDT} TEXT,
//   ${DbConstant.itemledgersDLN} TEXT,
//   ${DbConstant.itemledgersJTFF} TEXT,
//   ${DbConstant.itemledgersJP} TEXT,
//   ${DbConstant.itemledgersPON} TEXT,
//   ${DbConstant.itemledgersVC} TEXT,
//   ${DbConstant.itemledgersQPM} TEXT,
//   ${DbConstant.itemledgersUMC} TEXT,
//   ${DbConstant.itemledgersDBO} TEXT,
//  "${DbConstant.itemledgersCRN}" TEXT,
//   ${DbConstant.itemledgersOON} TEXT,
//   "${DbConstant.itemledgersOFS}" TEXT,
//   ${DbConstant.itemledgersITC} TEXT,
//   ${DbConstant.itemledgersNONS} TEXT,
//   ${DbConstant.itemledgersPC} TEXT,
//   ${DbConstant.itemledgersPGC} TEXT,
//   ${DbConstant.itemledgersTON} TEXT,
//   ${DbConstant.itemledgersCI} TEXT,
//   ${DbConstant.itemledgersLID} TEXT,
//   ${DbConstant.itemledgersAEA} TEXT,
//   ${DbConstant.itemledgersCAE} TEXT,
//   ${DbConstant.itemledgersCAA} TEXT,
//   ${DbConstant.itemledgersCANON} TEXT,
//   ${DbConstant.itemledgersCAEA} TEXT,
//   ${DbConstant.itemledgersSMA} TEXT,
//   ${DbConstant.itemledgersSA} TEXT,
//   ${DbConstant.itemledgersSAC} TEXT,
//   ${DbConstant.itemledgersC} TEXT,
//   ${DbConstant.itemledgersS} TEXT,
//   ${DbConstant.itemledgersPOLN} TEXT,
//   ${DbConstant.itemledgersPOCLN} TEXT,
//   ${DbConstant.itemledgersSON} TEXT,
//   ${DbConstant.itemledgersSNN} TEXT,
//   ${DbConstant.itemledgersLT} TEXT,
//   ${DbConstant.itemledgersWD} TEXT,
//   ${DbConstant.itemledgersEDD} TEXT,
//   ${DbConstant.itemledgersIT} TEXT,
//   ${DbConstant.itemledgersRRC} TEXT,
//   ${DbConstant.itemledgersON} TEXT,
//   ${DbConstant.itemledgersBN} TEXT,
//   ${DbConstant.itemledgersURV} TEXT,
//   ${DbConstant.itemledgersTY} TEXT,
//   ${DbConstant.itemledgersSNNo} TEXT,
//   ${DbConstant.itemledgersID} INTEGER
// )
// """);




    await db.execute('''
CREATE TABLE ${DbConstant.ItemLedgersTable} (
  ${DbConstant.itemledgersCA} TEXT,
  ${DbConstant.itemledgersUA} TEXT,
  ${DbConstant.itemledgersEN} TEXT,
  ${DbConstant.itemledgersIN} TEXT,
  ${DbConstant.itemledgersPD} TEXT,
  ${DbConstant.itemledgersET} TEXT,
  ${DbConstant.itemledgersSN} TEXT,
  ${DbConstant.itemledgersDN} TEXT,
  ${DbConstant.itemledgersD} TEXT,
  ${DbConstant.itemledgersLC} TEXT,
  ${DbConstant.itemledgersQ} TEXT,
  ${DbConstant.itemledgersRQ} TEXT,
  ${DbConstant.itemledgersIQ} TEXT,
  "${DbConstant.itemledgersAE}" TEXT,
  ${DbConstant.itemledgersO} TEXT,
  ${DbConstant.itemledgersGD1} TEXT,
  ${DbConstant.itemledgersGD2} TEXT,
  ${DbConstant.itemledgersP} TEXT,
  ${DbConstant.itemledgersSST} TEXT,
  ${DbConstant.itemledgersDS} TEXT,
  ${DbConstant.itemledgersTTT} TEXT,
  ${DbConstant.itemledgersTM} TEXT,
  "${DbConstant.itemledgersCRC}" TEXT,
  "${DbConstant.itemledgersEEP}" TEXT,
  ${DbConstant.itemledgersDD} TEXT,
  ${DbConstant.itemledgersED} TEXT,
  ${DbConstant.itemledgersA} TEXT,
  ${DbConstant.itemledgersTS} TEXT,
  ${DbConstant.itemledgersNS} TEXT,
  ${DbConstant.itemledgersRQQ} TEXT,
  ${DbConstant.itemledgersDT} TEXT,
  ${DbConstant.itemledgersDLN} TEXT,
  ${DbConstant.itemledgersJTFF} TEXT,
  ${DbConstant.itemledgersJP} TEXT,
  ${DbConstant.itemledgersPON} TEXT,
  ${DbConstant.itemledgersVC} TEXT,
  ${DbConstant.itemledgersQPM} TEXT,
  ${DbConstant.itemledgersUMC} TEXT,
  ${DbConstant.itemledgersDBO} TEXT,
  "${DbConstant.itemledgersCRN}" TEXT,
  ${DbConstant.itemledgersOON} TEXT,
  "${DbConstant.itemledgersOFS}" TEXT,
  ${DbConstant.itemledgersITC} TEXT,
  ${DbConstant.itemledgersNONS} TEXT,
  ${DbConstant.itemledgersPC} TEXT,
  ${DbConstant.itemledgersPGC} TEXT,
  ${DbConstant.itemledgersTON} TEXT,
  ${DbConstant.itemledgersCI} TEXT,
  ${DbConstant.itemledgersLID} TEXT,
  ${DbConstant.itemledgersAEA} TEXT,
  ${DbConstant.itemledgersCAE} TEXT,
  ${DbConstant.itemledgersCAA} TEXT,
  ${DbConstant.itemledgersCANON} TEXT,
  ${DbConstant.itemledgersCAEA} TEXT,
  ${DbConstant.itemledgersSMA} TEXT,
  ${DbConstant.itemledgersSA} TEXT,
  ${DbConstant.itemledgersSAC} TEXT,
  ${DbConstant.itemledgersC} TEXT,
  ${DbConstant.itemledgersS} TEXT,
  ${DbConstant.itemledgersPOLN} TEXT,
  ${DbConstant.itemledgersPOCLN} TEXT,
  ${DbConstant.itemledgersSON} TEXT,
  ${DbConstant.itemledgersSNN} TEXT,
  ${DbConstant.itemledgersLT} TEXT,
  ${DbConstant.itemledgersWD} TEXT,
  ${DbConstant.itemledgersEDD} TEXT,
  ${DbConstant.itemledgersIT} TEXT,
  ${DbConstant.itemledgersRRC} TEXT,
  ${DbConstant.itemledgersON} TEXT,
  ${DbConstant.itemledgersBN} TEXT,
  ${DbConstant.itemledgersURV} TEXT,
  ${DbConstant.itemledgersTY} TEXT,
  ${DbConstant.itemledgersSNNo} TEXT,
  ${DbConstant.itemledgersID} INTEGER
)
''');

    print("${DbConstant.ItemLedgersTable} table is created");




  }


  initDb20() async  {
    await database;
  }

}