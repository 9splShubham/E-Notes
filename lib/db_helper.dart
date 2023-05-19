import 'package:my_notes_app/model.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:io' as io;
import 'package:path/path.dart';

class DbHelper {
  late Database _db;
  static const String DB_Name = 'MyDb';
  static const String Table_User = 'user';
  static const int Version = 1;
  static const String User_ID = 'id';
  static const String User_Title = 'title';
  static const String User_Content = 'content';

  Future<Database> get db async {
    _db = await initDb();
    return _db;
  }

  initDb() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, DB_Name);
    var db = await openDatabase(path, version: Version, onCreate: _onCreate);
    return db;
  }

  _onCreate(Database db, int intVersion) async {
    await db.execute("CREATE TABLE $Table_User ("
        " $User_ID INTEGER PRIMARY KEY, "
        " $User_Title TEXT, "
        " $User_Content TEXT "
        ")");
  }

  Future<int> saveData(UserModel user) async {
    var dbClient = await db;
    var res = await dbClient.insert(Table_User, user.toJson());
    return res;
  }
}
