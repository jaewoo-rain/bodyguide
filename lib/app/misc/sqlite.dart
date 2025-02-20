import 'dart:io';

import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._();
  static Database? _database;

  DatabaseHelper._();

  factory DatabaseHelper() => _instance;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await initDatabase();
    return _database!;
  }

  Future<Database> initDatabase() async {
    final databasePath = await getDatabasesPath();
    final path = join(databasePath, 'output.db');

    // SQLite 파일 복사
    if (!await File(path).exists()) {
      ByteData data = await rootBundle.load('asset/database/output.db');
      List<int> bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await File(path).writeAsBytes(bytes);
    }
    print('생성');
    return openDatabase(path);
  }

  // 테이블 데이터 조회 메서드
  Future<List<Map<String, dynamic>>> fetchData(String tableName) async {
    final db = await database;
    return await db.query(tableName);
  }
}
