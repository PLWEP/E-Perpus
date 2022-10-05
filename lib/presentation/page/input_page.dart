import 'package:flutter/cupertino.dart';
import 'package:perpus/presentation/page/class_selection_page.dart';
import 'package:perpus/presentation/page/success_page.dart';
import 'package:perpus/presentation/widget/custom_button.dart';
import 'package:perpus/presentation/widget/custom_dropdown.dart';
import 'package:perpus/presentation/widget/custom_main_container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputPage extends StatelessWidget {
  static const routeName = '/input_page';
  const InputPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomMainContainer(
      height: 300,
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
                ClassSelectionPage.routeName,
              );
            },
          ),
          const CustomDropdown(),
          CustomButton(
            width: double.infinity.w,
            height: 60.h,
            title: "Submit Kehadiran",
            fontSize: 32.sp,
            onPressed: () {
              Navigator.pushReplacementNamed(
                context,
                SuccessPage.routeName,
              );
            },
            margin: const EdgeInsets.only(top: 10),
          ),
        ],
      ),
    );
  }
}
