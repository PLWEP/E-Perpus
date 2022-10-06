import 'package:perpus/data/datasource/db/student_db.dart';
import 'package:perpus/data/models/student_table.dart';
import 'package:perpus/utils/exception.dart';

abstract class StudentDataSource {
  Future<String> addStudent(StudentTable student);
  Future<String> deleteStudent(int id);
  Future<List<StudentTable>> getStudent();
  Future<String> saveStudentPresent(StudentTable student);
}

class StudentDataSourceImplementation implements StudentDataSource {
  final DatabaseHelper databaseHelper;

  StudentDataSourceImplementation(this.databaseHelper);

  @override
  Future<String> addStudent(StudentTable student) async {
    try {
      await databaseHelper.addStudent(student);
      return 'Added data';
    } catch (e) {
      throw DatabaseException(e.toString());
    }
  }

  @override
  Future<String> deleteStudent(int id) async {
    try {
      await databaseHelper.deleteStudent(id);
      return 'Added data';
    } catch (e) {
      throw DatabaseException(e.toString());
    }
  }

  @override
  Future<List<StudentTable>> getStudent() async {
    final result = await databaseHelper.getStudent();
    return result.map((data) => StudentTable.fromMap(data)).toList();
  }

  @override
  Future<String> saveStudentPresent(StudentTable student) async {
    try {
      await databaseHelper.saveStudentPresent(student);
      return 'Updated data';
    } catch (e) {
      throw DatabaseException(e.toString());
    }
  }
}
