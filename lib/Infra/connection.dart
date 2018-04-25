import 'dart:io';
import 'dart:async';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';



class Connection {
    
    static Future<Database> openConnection() async {
        Directory documentsDirectory = await getApplicationDocumentsDirectory();
        String path = join(documentsDirectory.path, "contatos.db");
        Database database = await openDatabase(path, 
            version: 1, 
            onCreate: (Database db, int version) async {
                await db.execute("CREATE TABLE contatos "+
                "(id INTEGER PRIMARY KEY, name TEXT, phone TEXT, email TEXT)");
            },
            onUpgrade: (Database db, int newVersion, int oldVersion) async {

            }
        );
        return database;
        
    }
}