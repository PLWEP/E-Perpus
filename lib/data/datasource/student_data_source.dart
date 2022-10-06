import 'package:perpus/data/datasource/db/student_db.dart';
import 'package:perpus/domain/entity/student.dart';
import 'package:perpus/utils/exception.dart';

abstract class StudentDataSource {
  Future<String> addStudent(Student student);
  Future<String> deleteStudent(int id);
  Future<List<Student>> getStudent();
  Future<String> saveStudentPresent(Student student);
}

class StudentDataSourceImplementation implements StudentDataSource {
  final DatabaseHelper databaseHelper;

  StudentDataSourceImplementation(this.databaseHelper);

  @override
  Future<String> addStudent(Student student) async {
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
  Future<List<Student>> getStudent() async {
    final result = await databaseHelper.getStudent();
    return result.map((data) => Student.fromMap(data)).toList();
  }

  @override
  Future<String> saveStudentPresent(Student student) async {
    try {
      await databaseHelper.saveStudentPresent(student);
      return 'Updated data';
    } catch (e) {
      throw DatabaseException(e.toString());
    }
  }
}
