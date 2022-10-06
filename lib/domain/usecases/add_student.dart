import 'package:either_dart/either.dart';
import 'package:perpus/domain/entity/student.dart';
import 'package:perpus/domain/repositories/student_repository.dart';
import 'package:perpus/utils/failure.dart';

class AddStudent {
  final StudentRepository repository;

  AddStudent(this.repository);

  Future<Either<Failure, String>> execute(Student student) {
    return repository.addStudent(student);
  }
}
