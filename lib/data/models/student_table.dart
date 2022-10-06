import 'package:equatable/equatable.dart';
import 'package:perpus/data/models/student_model.dart';

import 'package:perpus/domain/entity/student.dart';

class StudentTable extends Equatable {
  final int id;
  final String name;
  final String classNumber;
  final String status;

  const StudentTable({
    required this.id,
    required this.name,
    required this.classNumber,
    required this.status,
  });

  @override
  List<Object> get props => [id, name, classNumber, status];

  factory StudentTable.fromMap(Map<String, dynamic> map) {
    return StudentTable(
      id: map['id'] as int,
      name: map['name'] as String,
      classNumber: map['classNumber'] as String,
      status: map['status'] as String,
    );
  }

  factory StudentTable.fromEntity(Student student) => StudentTable(
        id: student.id,
        classNumber: student.classNumber,
        name: student.name,
        status: student.status,
      );

  factory StudentTable.fromDTO(StudentModel student) => StudentTable(
        id: student.id,
        classNumber: student.classNumber,
        name: student.name,
        status: student.status,
      );

  Student toEntity() => Student(
        id: id,
        classNumber: classNumber,
        name: name,
        status: status,
      );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'classNumber': classNumber,
      'status': status,
    };
  }
}
