part of 'student_bloc.dart';

abstract class StudentEvent extends Equatable {
  const StudentEvent();

  @override
  List<Object> get props => [];
}

class AddStudentEvent extends StudentEvent {
  const AddStudentEvent();

  @override
  List<Object> get props => [];
}

class DeleteStudentEvent extends StudentEvent {
  final int id;
  const DeleteStudentEvent(this.id);

  @override
  List<Object> get props => [id];
}

class GetStudentEvent extends StudentEvent {
  const GetStudentEvent();

  @override
  List<Object> get props => [];
}

class SaveStudentPresentEvent extends StudentEvent {
  final Student student;
  const SaveStudentPresentEvent(this.student);

  @override
  List<Object> get props => [student];
}

class ChangeName extends StudentEvent {
  final String name;
  const ChangeName(this.name);

  @override
  List<Object> get props => [name];
}

class ChangeClassNumber extends StudentEvent {
  final String classNumber;
  const ChangeClassNumber(this.classNumber);

  @override
  List<Object> get props => [classNumber];
}
