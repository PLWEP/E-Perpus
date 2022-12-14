import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:perpus/presentation/page/add_data_page.dart';
import 'package:perpus/presentation/page/class_selection_page.dart';
import 'package:perpus/presentation/page/home_page.dart';
import 'package:perpus/presentation/page/input_page.dart';
import 'package:perpus/presentation/page/setting_page.dart';
import 'package:perpus/presentation/page/success_page.dart';
import 'package:perpus/injector.dart' as di;
import 'package:perpus/presentation/bloc/student_bloc.dart';

void main() {
  di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1440, 960),
      minTextAdapt: true,
      builder: (BuildContext context, Widget? child) {
        return BlocProvider(
          create: (_) => di.locator<StudentBloc>(),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: child,
            routes: {
              HomePage.routeName: (context) => const HomePage(),
              ClassSelectionPage.routeName: (context) =>
                  const ClassSelectionPage(),
              InputPage.routeName: (context) => const InputPage(),
              SuccessPage.routeName: (context) => const SuccessPage(),
              SettingPage.routeName: (context) => const SettingPage(),
              AddDataPage.routeName: (context) => const AddDataPage(),
            },
          ),
        );
      },
      child: const HomePage(),
    );
  }
}
