import 'package:either_dart/either.dart';
import 'package:perpus/domain/repositories/student_repository.dart';
import 'package:perpus/utils/failure.dart';
import 'package:perpus/domain/entity/student.dart';

class SaveStudentPresent {
  final StudentRepository repository;

  SaveStudentPresent(this.repository);

  Future<Either<Failure, String>> execute(Student student) {
    return repository.saveStudentPresent(student);
  }
}
