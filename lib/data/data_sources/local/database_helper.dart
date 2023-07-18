import 'dart:io';
import 'package:path/path.dart';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class Databasehelper {
  static final _databasename = "myDatabase.db";
  static final _databaseversion = 1;
  static final table = "my_table";
  static final columnID = 'id';
  static final columnName = "name";
  static final columnage = 'age';

static final Databasehelper databasehelper = Databasehelper();

static Database? _database;

  Future<Database?> get database async{
    _database ??= await initDB();

    return _database;

  }

  initDB() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, _databasename);
    return await openDatabase(path, version: _databaseversion, onCreate: onCreate);

  }
  Future onCreate(Database db, int version) async{
      db.execute(
        '''
        CREATE TABLE $table(
        $columnID INTEGER PRIMARY KEY,
        $columnName TEXT NOT NULL
        )
        
        
        '''
      );



  }
  insertRecord(Map<String, dynamic> row) async {
    Database? db = await databasehelper.database;
    return await db!.insert(table, row);
  }


  Future<List<Map<String, dynamic>>> queryDatabase() async {
    Database? db = await databasehelper.database;
    return await db!.query(table);

  }

  //update method
  Future<int> updateRecord(Map<String, dynamic> row) async{
    Database? db = await databasehelper.database;
    int id = row[columnID];
    return await db!.update(table, row, where: '$columnID = ?', whereArgs: [id]);
  }

  Future<int> deleteRecord(int id) async{
    Database? db = await databasehelper.database;
    return await db!.delete(table, where: '$columnID = ?', whereArgs: [id]);
  }


}