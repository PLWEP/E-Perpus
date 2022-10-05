import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:perpus/presentation/page/add_data_page.dart';
import 'package:perpus/presentation/page/class_selection_page.dart';
import 'package:perpus/presentation/page/edit_data_page.dart';
import 'package:perpus/presentation/page/home_page.dart';
import 'package:perpus/presentation/page/input_page.dart';
import 'package:perpus/presentation/page/setting_page.dart';
import 'package:perpus/presentation/page/success_page.dart';

void main() {
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
        return MaterialApp(
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
            EditDataPage.routeName: (context) => const EditDataPage(),
            AddDataPage.routeName: (context) => const AddDataPage(),
          },
        );
      },
      child: const HomePage(),
    );
  }
}
