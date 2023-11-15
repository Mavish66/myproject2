import 'dart:io';

import 'package:hpostables/dbconstants/dbconstants.dart';
import 'package:hpostables/dbhelper/dbhelper.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DbHelper16 {
  DbHelper16.getInstance();

  static final _instance = DbHelper16.getInstance();

  factory DbHelper16() {
    return _instance;
  }

  static Database? _database;

  insertAllDb16(String table, List<dynamic> objects) async {
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

  Future<List<Map<String, dynamic>>?> getCouponHeadersDB() async {
    final db = await DbHelper().database;
    List<Map<String, Object?>>? result = await db?.query("coupon_headers");
    print(result);
    return result;
  }

  Future<List<Map<String, dynamic>>?> getCouponEntriesDB() async {
    final db = await DbHelper().database;
    List<Map<String, Object?>>? result = await db?.query("coupon_entries");
    print(result);
    return result;
  }

  initDb16() async {
    var db = await DbHelper().database;

    await db?.execute("""
    CREATE TABLE ${DbConstant.CountryTableName}(
    ${DbConstant.countryCreatedAt} TIMESTAMP,
    ${DbConstant.countryupdatedAt} TIMESTAMP,
    ${DbConstant.countryName} TEXT,
    ${DbConstant.countryIso3} TEXT,
    ${DbConstant.countryIso2} TEXT,
    ${DbConstant.countryNumericcode} TEXT,
    ${DbConstant.countryphonecode} TEXT,
    ${DbConstant.countryCapital} TEXT,
    ${DbConstant.countryCurrency} TEXT,
    ${DbConstant.countryCurrencyName} TEXT,
    ${DbConstant.country} TEXT,
    ${DbConstant.countrytld} TEXT,
    ${DbConstant.countrynative} TEXT,
    ${DbConstant.countryregion} TEXT,
    ${DbConstant.countrysubregion} TEXT,
    ${DbConstant.countrylatitude} TEXT,
    ${DbConstant.countrylongitude} TEXT,
    ${DbConstant.countryemoji} TEXT,
    ${DbConstant.countryemojiU} TEXT,
    ${DbConstant.countryid} INTEGER
    )
    """);
    print("${DbConstant.CountryTableName} table  is  created");

    await db?.execute("""
    CREATE TABLE ${DbConstant.CouponEntiresTable} (
    ${DbConstant.couponCreatdat} TEXT,
    ${DbConstant.couponUpdatedAt} TEXT,
    ${DbConstant.couponStoreno} TEXT,
    ${DbConstant.couponPosterminal} TEXT,
    ${DbConstant.couponTranc} TEXT,
    ${DbConstant.couponCode} TEXT,
    ${DbConstant.couponLN} TEXT,
    ${DbConstant.couponCRN} TEXT,
    ${DbConstant.couponNo} TEXT,
    ${DbConstant.couponBarcode} TEXT,
    ${DbConstant.couponIssuedStore} TEXT,
    ${DbConstant.coupissued_by_pos_terminal} TEXT,
    ${DbConstant.couponIssuedate} TEXT,
    ${DbConstant.couponIssuebyUSER} TEXT,
    ${DbConstant.couponresrvedPosterminal} TEXT,
    ${DbConstant.couponreservedonPos} TEXT,
    ${DbConstant.couponFVD} TEXT,
    ${DbConstant.couponLVD} TEXT,
    ${DbConstant.couponStatus} TEXT,
    ${DbConstant.couponSn} TEXT,
    ${DbConstant.couponCBN} TEXT,
    ${DbConstant.couponCBT} TEXT,
    ${DbConstant.couponCD} TEXT,
    ${DbConstant.couponCBU} TEXT,
    ${DbConstant.couponCBNN} TEXT,
    ${DbConstant.couponDtype} TEXT,
    ${DbConstant.couponV} TEXT,
    ${DbConstant.couponVT} TEXT,
    ${DbConstant.couponGS} TEXT,
    ${DbConstant.couponGA} TEXT,
    ${DbConstant.couponCF} TEXT,
    ${DbConstant.couponFLE} TEXT,
    ${DbConstant.couponMA} TEXT,
    ${DbConstant.couponID} INTEGER
    )
    """);
    print("${DbConstant.CouponEntiresTable} table  is  created");

    await db?.execute("""
    CREATE TABLE ${DbConstant.CouponHeaderTable}(
    ${DbConstant.couponheaderCreatedAT} TEXT,
    ${DbConstant.couponheaderUpdatedAt} TEXT,
    ${DbConstant.couponheaderCode} TEXT,
    ${DbConstant.couponheaderCouponIssuer} TEXT,
    ${DbConstant.couponheaderCouponReferenceNo} TEXT,
    ${DbConstant.couponheaderDescription} TEXT,
    ${DbConstant.couponheaderDescription2} TEXT,
    ${DbConstant.couponheaderPriceGroup} TEXT,
    ${DbConstant.couponheaderDiscountType} TEXT,
    ${DbConstant.couponheaderValidationPeriodId} TEXT,
    ${DbConstant.couponheaderStatus} TEXT,
    ${DbConstant.couponheaderType} TEXT,
    ${DbConstant.couponheaderHandling} TEXT,
    ${DbConstant.couponheaderNoOfItemsToTrigger} TEXT,
    ${DbConstant.couponheaderApplyToNoOfItems} TEXT,
    ${DbConstant.couponheaderAffects} TEXT,
    ${DbConstant.couponheaderNoSeries} TEXT,
    ${DbConstant.couponheaderMultiplyValue} TEXT,
    ${DbConstant.couponheaderMultiplyValuePeriodId} TEXT,
    ${DbConstant.couponheaderIssueAtPos} TEXT,
    ${DbConstant.couponheaderLoyaltyScheme} TEXT,
    ${DbConstant.couponheaderDiscountOfTotal} TEXT,
    ${DbConstant.couponheaderRoundingMethod} TEXT,
    ${DbConstant.couponheaderExtraPrintSetup} TEXT,
    ${DbConstant.couponheaderBarcodeMask} TEXT,
    ${DbConstant.couponheaderMemberType} TEXT,
    ${DbConstant.couponheaderMemberValue} TEXT,
    ${DbConstant.couponheaderFirstValidDateFormula} TEXT,
    ${DbConstant.couponheaderLastValidDateFormula} TEXT,
    ${DbConstant.couponheaderBarcodeElement1} TEXT,
    ${DbConstant.couponheaderBarcodeElement2} TEXT,
    ${DbConstant.couponheaderBarcodeElement3} TEXT,
    ${DbConstant.couponheaderBarcodeElement4} TEXT,
    ${DbConstant.couponheaderBarcodeElement5} TEXT,
    ${DbConstant.couponheaderBarcodeElement6} TEXT,
    ${DbConstant.couponheaderBarcodeElement7} TEXT,
    ${DbConstant.couponheaderBarcodeElement8} TEXT,
    ${DbConstant.couponheaderCalculationType} TEXT,
    ${DbConstant.couponheaderValue} TEXT,
    ${DbConstant.couponheaderEntryValidation} TEXT,
    ${DbConstant.couponheaderPostingType} TEXT,
    ${DbConstant.couponheaderPostingAccount} TEXT,
    ${DbConstant.couponheaderBuyerId} TEXT,
    ${DbConstant.couponheaderBuyerGroupCode} TEXT,
    ${DbConstant.couponheaderOfflineProcess} TEXT,
    ${DbConstant.couponheaderCouponIdMethod} TEXT,
    ${DbConstant.couponheaderMaxPerMember} TEXT,
    ${DbConstant.couponheaderMinimumTransAmount} TEXT,
    ${DbConstant.couponheaderMaximumTransAmount} TEXT,
    ${DbConstant.couponheaderID} INTEGER
    )
    """);
    print("${DbConstant.CouponHeaderTable} table  is  created");

    await db?.execute("""
    CREATE TABLE ${DbConstant.CurrencyMasterTable}(
    ${DbConstant.currencyID} INTEGER PRIMARY KEY,
    ${DbConstant.currencyCreadtedT} TIMESTAMP,
    ${DbConstant.currencyUPDATEAT} TIMESTAMP,
    ${DbConstant.currencyCC} TEXT,
    ${DbConstant.currencyCN} TEXT
    )
    """);
    print("${DbConstant.CurrencyMasterTable} table  is  created");

    await db?.execute("""
    CREATE TABLE ${DbConstant.CustomersTable}(
    ${DbConstant.customersCreatedat} TIMESTAMP,
    ${DbConstant.customersUpdatedat} TIMESTAMP,
    ${DbConstant.customersCustomerId} INTEGER,
    ${DbConstant.customersCompanyCode} TEXT,
    ${DbConstant.customersNo} TEXT,
    ${DbConstant.customersFirstName} TEXT,
    ${DbConstant.customersLastName} TEXT,
    ${DbConstant.customersSalutation} TEXT,
    ${DbConstant.customersNationality} TEXT,
    ${DbConstant.customersCountryCode} TEXT,
    ${DbConstant.customersCreditCustomer} INTEGER,
    ${DbConstant.customersVatRegistrationNo} TEXT,
    ${DbConstant.customersMobileNo} TEXT,
    ${DbConstant.customersAltMobileNo} TEXT,
    ${DbConstant.customersEmail} TEXT,
    ${DbConstant.customersStatus} TEXT,
    ${DbConstant.customersCreatedBy} TEXT,
    ${DbConstant.customersCreatedDate} TEXT,
    ${DbConstant.customersUpdatedBy} TEXT,
    ${DbConstant.customersUpdatedDate} TEXT,
    ${DbConstant.customersId} INTEGER
    )
    """);
    print("${DbConstant.CustomersTable} table  is  created");
    print(
        "------------------------FROM Dbhelper16  5 tables were created------------------------------");
  }
}
