// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class Student extends Equatable {
  final int id;
  final String name;
  final String classNumber;
  final String status;

  const Student({
    required this.id,
    required this.name,
    required this.classNumber,
    required this.status,
  });

  @override
  List<Object> get props => [id, name, classNumber, status];
}
