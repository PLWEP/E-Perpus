import 'package:either_dart/either.dart';
import 'package:perpus/domain/repositories/student_repository.dart';
import 'package:perpus/utils/failure.dart';

class DeleteStudent {
  final StudentRepository repository;

  DeleteStudent(this.repository);

  Future<Either<Failure, String>> execute(int id) {
    return repository.deleteStudent(id);
  }
}
