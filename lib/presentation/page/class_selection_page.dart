import 'package:flutter/cupertino.dart';
import 'package:perpus/presentation/page/home_page.dart';
import 'package:perpus/presentation/widget/custom_button.dart';
import 'package:perpus/presentation/widget/custom_class_item.dart';
import 'package:perpus/presentation/widget/custom_main_container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClassSelectionPage extends StatelessWidget {
  static const routeName = '/class_selection_page';
  const ClassSelectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomMainContainer(
      height: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomButton(
            width: 150.w,
            height: 50.h,
            title: 'Kembali',
            fontSize: 24.sp,
            onPressed: () {
              Navigator.pushReplacementNamed(
                context,
                HomePage.routeName,
              );
            },
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                CustomClassItem(title: '7.1'),
                CustomClassItem(title: '7.2'),
                CustomClassItem(title: '7.3'),
                CustomClassItem(title: '7.4'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
