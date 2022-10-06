// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:perpus/domain/entity/student.dart';
import 'package:perpus/domain/usecases/add_student.dart';
import 'package:perpus/domain/usecases/delete_student.dart';
import 'package:perpus/domain/usecases/get_student.dart';
import 'package:perpus/domain/usecases/save_student_present.dart';

part 'student_event.dart';
part 'student_state.dart';

class StudentBloc extends Bloc<StudentEvent, StudentState> {
  final AddStudent addStudent;
  final DeleteStudent deleteStudent;
  final GetStudent getStudent;
  final SaveStudentPresent saveStudentPresent;

  String name = '';
  String classNumber = '';

  StudentBloc(
    this.addStudent,
    this.deleteStudent,
    this.getStudent,
    this.saveStudentPresent,
  ) : super(Empty()) {
    on<AddStudentEvent>(
      (event, emit) async {
        emit(Loading());

        Student student = Student(
          classNumber: classNumber,
          name: name,
          id: 0,
          status: 'tidak hadir',
        );

        final result = await addStudent.execute(student);

        result.fold(
          (failure) {
            emit(Error(failure.message));
          },
          (data) {
            emit(Success(data));
          },
        );
      },
    );

    on<DeleteStudentEvent>(
      (event, emit) async {
        emit(Loading());
        final result = await deleteStudent.execute(event.id);

        result.fold(
          (failure) {
            emit(Error(failure.message));
          },
          (data) {
            emit(Success(data));
          },
        );
      },
    );

    on<GetStudentEvent>(
      (event, emit) async {
        emit(Loading());
        final result = await getStudent.execute();

        result.fold(
          (failure) {
            emit(Error(failure.message));
          },
          (data) {
            emit(Loaded(data));
          },
        );
      },
    );

    on<SaveStudentPresentEvent>(
      (event, emit) async {
        emit(Loading());
        final result = await saveStudentPresent.execute(event.student);

        result.fold(
          (failure) {
            emit(Error(failure.message));
          },
          (data) {
            emit(Success(data));
          },
        );
      },
    );

    on<ChangeClassNumber>((event, emit) => classNumber = event.classNumber);
    on<ChangeName>((event, emit) => name = event.name);
  }
}
