import 'package:either_dart/either.dart';
import 'package:perpus/domain/entity/student.dart';
import 'package:perpus/domain/repositories/student_repository.dart';
import 'package:perpus/utils/failure.dart';

class GetStudent {
  final StudentRepository repository;

  GetStudent(this.repository);

  Future<Either<Failure, List<Student>>> execute() {
    return repository.getStudent();
  }
}
