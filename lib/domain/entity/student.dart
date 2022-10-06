import 'package:equatable/equatable.dart';

class Student extends Equatable {
  final int id;
  final String name;
  final String classNumber;
  final bool status;

  const Student({
    required this.id,
    required this.name,
    required this.classNumber,
    required this.status,
  });

  @override
  List<Object> get props => [id, name, classNumber, status];

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'classNumber': classNumber,
      'status': status,
    };
  }

  factory Student.fromMap(Map<String, dynamic> map) {
    return Student(
      id: map['id'] as int,
      name: map['name'] as String,
      classNumber: map['classNumber'] as String,
      status: map['status'] as bool,
    );
  }
}
