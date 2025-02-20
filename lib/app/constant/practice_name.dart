// import 'dart:io';
//
// import 'package:app/app/misc/sqlite.dart';
// import 'package:app/model/local/practice.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:flutter/services.dart';
// import 'package:path/path.dart';
//
// class PracticeName {
//   final DatabaseHelper dbHelper = DatabaseHelper();
//   static Database? _database;
//   List<Map<String, dynamic>> datas = [];
//   List<Practice> title = [];
//   List detail = [];
//
//   // PracticeName();
//
//   // 초기화 메서드: 데이터를 로드하고 저장
//   Future<void> loadData() async {
//     initDatabase();
//
//     final db = await dbHelper.database;
//     final result = await db.query(
//       'EXERCISE',
//       where: 'muscle_group_id = ?',
//       whereArgs: [1],
//     );
//
//     final titles = await dbHelper.fetchData("MUSCLE");
//     final details = await dbHelper.fetchData("EXERCISE");
//
//     for (var value in titles) {
//       title.add(value['name_kr']);
//     }
//   }
//
//   // 파일 생성
//   Future<Database> initDatabase() async {
//     print('생성');
//     final databasePath = await getDatabasesPath();
//     final path = join(databasePath, 'output.db');
//
//     // SQLite 파일 복사
//     if (!await File(path).exists()) {
//       ByteData data = await rootBundle.load('asset/database/output.db');
//       List<int> bytes =
//           data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
//       await File(path).writeAsBytes(bytes);
//     }
//
//     return openDatabase(path);
//   }
// }
