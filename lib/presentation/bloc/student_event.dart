part of 'student_bloc.dart';

abstract class StudentEvent extends Equatable {
  const StudentEvent();

  @override
  List<Object> get props => [];
}

class AddStudentEvent extends StudentEvent {
  final Student student;
  const AddStudentEvent(this.student);

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
