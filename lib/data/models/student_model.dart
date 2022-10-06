import 'package:equatable/equatable.dart';
import 'package:perpus/domain/entity/student.dart';

class StudentModel extends Equatable {
  final int id;
  final String name;
  final String classNumber;
  final String status;

  const StudentModel({
    required this.id,
    required this.name,
    required this.classNumber,
    required this.status,
  });

  Student toEntity() {
    return Student(
      id: id,
      name: name,
      classNumber: classNumber,
      status: status,
    );
  }

  @override
  List<Object> get props => [id, name, classNumber, status];
}
