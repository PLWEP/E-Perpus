import 'package:sqflite/sqflite.dart';
import 'package:perpus/domain/entity/student.dart';

class DatabaseHelper {
  static DatabaseHelper? _databaseHelper;
  DatabaseHelper._instance() {
    _databaseHelper = this;
  }

  factory DatabaseHelper() => _databaseHelper ?? DatabaseHelper._instance();

  static Database? _database;

  Future<Database?> get database async {
    _database ??= await _initDb();
    return _database;
  }

  static const String _tblstudent = 'student';

  Future<Database> _initDb() async {
    final path = await getDatabasesPath();
    final databasePath = '$path/perpus.db';

    var db = await openDatabase(databasePath, version: 1, onCreate: _onCreate);
    return db;
  }

  void _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE  $_tblstudent (
        id INTEGER PRIMARY KEY,
        name TEXT,
        classname TEXT,
        status INTEGER
      );
    ''');
  }

  Future<int> addStudent(Student student) async {
    final db = await database;
    return await db!.insert(_tblstudent, student.toMap());
  }

  Future<int> deleteStudent(int id) async {
    final db = await database;
    return await db!.delete(
      _tblstudent,
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<List<Map<String, dynamic>>> getStudent() async {
    final db = await database;
    final List<Map<String, dynamic>> results = await db!.query(
      _tblstudent,
    );

    return results;
  }

  Future<int?> saveStudentPresent(Student student) async {
    final db = await database;
    return await db?.update(_tblstudent, student.toMap(),
        where: 'id = ?', whereArgs: [student.id]);
  }
}
