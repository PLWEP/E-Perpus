part of 'student_bloc.dart';

abstract class StudentState extends Equatable {
  const StudentState();

  @override
  List<Object> get props => [];
}

class Empty extends StudentState {}

class Loading extends StudentState {}

class Error extends StudentState {
  final String message;

  const Error(this.message);

  @override
  List<Object> get props => [message];
}

class Success extends StudentState {
  final String message;

  const Success(this.message);

  @override
  List<Object> get props => [message];
}

class Loaded extends StudentState {
  final List<Student> result;

  const Loaded(this.result);

  @override
  List<Object> get props => [result];
}
