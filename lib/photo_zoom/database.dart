import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:ui/photo_zoom/model.dart';

class DbHelper
{
  static final DbHelper dbHelper=DbHelper._();
  DbHelper._();

  Database? database;
  final String dbpath="dbpath.db";
  String datatable="datatable";
  String like="like";

  Future<Object?> checkdb()
  async {
    if(database!=null)
      {
        return database;
      }
    else
      {
        return await intdb();
      }
  }

  Future<Database> intdb()
  async {
    Directory dir = await getApplicationDocumentsDirectory();
    String path=join(dir.path,dbpath);
    return await openDatabase(path,version: 1,onCreate: (db, version) async {
      return await db.execute("CREATE TABLE $datatable(id INTEGER PRIMARY KEY AutoIncrement,$like TEXT)");
    },);

  }


  Future<void> insertDb({model? m1})
  async {
    database = (await checkdb()) as Database?;

    await database!.insert("$datatable", {
      "$like":m1!.like,
    });
  }

  Future<List<Map>> readDb() async {
    database = (await checkdb()) as Database?;
    String quary = "SELECT * FROM $datatable";
    List<Map> l1 = await database!.rawQuery(quary);
    return l1;
  }
}