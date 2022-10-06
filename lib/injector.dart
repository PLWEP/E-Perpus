import 'package:get_it/get_it.dart';
import 'package:perpus/data/datasource/db/student_db.dart';
import 'package:perpus/data/datasource/student_data_source.dart';
import 'package:perpus/data/repository/student_repository_implementation.dart';
import 'package:perpus/domain/repositories/student_repository.dart';
import 'package:perpus/domain/usecases/add_student.dart';
import 'package:perpus/domain/usecases/delete_student.dart';
import 'package:perpus/domain/usecases/get_student.dart';
import 'package:perpus/domain/usecases/save_student_present.dart';
import 'package:perpus/presentation/bloc/student_bloc.dart';

final locator = GetIt.instance;

void init() {
  locator.registerFactory(
    () => StudentBloc(
      locator(),
      locator(),
      locator(),
      locator(),
    ),
  );

  locator.registerLazySingleton(() => GetStudent(locator()));
  locator.registerLazySingleton(() => AddStudent(locator()));
  locator.registerLazySingleton(() => DeleteStudent(locator()));
  locator.registerLazySingleton(() => SaveStudentPresent(locator()));

  locator.registerLazySingleton<StudentRepository>(
      () => StudentRepositoryImpl(locator()));

  locator.registerLazySingleton<StudentDataSource>(
      () => StudentDataSourceImplementation(locator()));

  locator.registerLazySingleton<DatabaseHelper>(() => DatabaseHelper());
}
