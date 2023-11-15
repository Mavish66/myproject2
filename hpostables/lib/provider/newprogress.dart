import 'package:flutter/cupertino.dart';
import 'package:sqflite/sqflite.dart';

import '../dbhelper/dbhelper.dart';

class InsertProvider extends ChangeNotifier {
  var percentage;

  insertAll(String table, List<dynamic> objects) async {
    int total = objects.length;
    double i = 0.01;
    i = (i / total) * 100;
    percentage = 0.0;
    List<dynamic> listRes = [];
    var res;
    try {
      var _database = await DbHelper.getInstance().database;
      await _database?.transaction((db) async {
        objects.forEach((obj) async {
          try {
            var iRes = await db.insert(table, obj.toMap(),
                conflictAlgorithm: ConflictAlgorithm.replace);
            listRes.add(iRes);

            percentage = (i / total) * 100;
            notifyListeners();

            i += 0.01;
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
}
