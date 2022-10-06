import 'package:either_dart/either.dart';
import 'package:perpus/domain/entity/student.dart';
import 'package:perpus/utils/failure.dart';

abstract class StudentRepository {
  Future<Either<Failure, List<Student>>> getStudent();
  Future<Either<Failure, String>> addStudent(Student student);
  Future<Either<Failure, String>> deleteStudent(int id);
  Future<Either<Failure, String>> saveStudentPresent(Student student);
  Future<bool> isPresent(int id);
}
