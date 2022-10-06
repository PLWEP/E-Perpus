import 'package:perpus/data/datasource/student_data_source.dart';
import 'package:perpus/data/models/student_table.dart';
import 'package:perpus/domain/entity/student.dart';
import 'package:either_dart/either.dart';
import 'package:perpus/domain/repositories/student_repository.dart';
import 'package:perpus/utils/exception.dart';
import 'package:perpus/utils/failure.dart';

class StudentRepositoryImpl implements StudentRepository {
  final StudentDataSource studentDataSource;

  StudentRepositoryImpl(this.studentDataSource);
  @override
  Future<Either<Failure, String>> addStudent(Student student) async {
    try {
      final result =
          await studentDataSource.addStudent(StudentTable.fromEntity(student));
      return Right(result);
    } on DatabaseException {
      return const Left(DatabaseFailure(''));
    }
  }

  @override
  Future<Either<Failure, String>> deleteStudent(int id) async {
    try {
      final result = await studentDataSource.deleteStudent(id);
      return Right(result);
    } on DatabaseException {
      return const Left(DatabaseFailure(''));
    }
  }

  @override
  Future<Either<Failure, List<Student>>> getStudent() async {
    try {
      final result = await studentDataSource.getStudent();
      return Right(result.map((model) => model.toEntity()).toList());
    } on DatabaseException {
      return const Left(DatabaseFailure(''));
    }
  }

  @override
  Future<bool> isPresent(int id) {
    // TODO: implement isPresent
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, String>> saveStudentPresent(Student student) async {
    try {
      final result = await studentDataSource
          .saveStudentPresent(StudentTable.fromEntity(student));
      return Right(result);
    } on DatabaseException {
      return const Left(DatabaseFailure(''));
    }
  }
}
