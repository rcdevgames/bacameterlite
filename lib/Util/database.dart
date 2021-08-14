import 'package:get/get.dart';
import 'package:sqflite/sqflite.dart';

const String dbName = "bacameter.db";

abstract class Database {
  Future<List<Map<String, dynamic>>> manual(String query);
}

class DatabaseImpl extends GetxService implements Database {

  Future<Database> _db;

  @override
  void onInit() {
    initDB();
    super.onInit();
  }

  @override
  void onClose() {
    closeDB();
    super.onClose();
  }


  String errorDB(String tableName, DatabaseException e) {
    if (e.isDatabaseClosedError()) {
      return "Database telah ditutup!\nsilahkan tutup dan buka kembali aplikasi";
    } else if (e.isNoSuchTableError(tableName)) {
      return "Table $tableName tidak ditemukan!";
    } else if (e.isDuplicateColumnError()) {
      return "Duplikasi Kolom pada table $tableName";
    } else if (e.isNotNullConstraintError()) {
      return "Ada field di table $tableName yang tidak boleh kosong!";
    } else if (e.isOpenFailedError()) {
      return "Gagal membuka database!";
    } else if (e.isSyntaxError()) {
      return "Terdapat query yang salah pada table $tableName";
    } else if (e.isUniqueConstraintError()) {
      return "Ada duplikasi data pada table $tableName";
    }
    return e.toString();
  }

  @override
  Future<List<Map<String, dynamic>>> manual(String query) async {
    try {
      final db = await getDb();
      final result = await db.rawQuery(query);
      db.close();
      return result;
    } on DatabaseException catch (e) {
      throw Exception(errorDB(query, e));
    }
  }
  
}