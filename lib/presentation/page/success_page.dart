import 'package:flutter/cupertino.dart';
import 'package:perpus/presentation/page/home_page.dart';
import 'package:perpus/presentation/widget/custom_button.dart';
import 'package:perpus/presentation/widget/custom_main_container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:perpus/utils/theme.dart';

class SuccessPage extends StatelessWidget {
  static const routeName = '/success_page';
  const SuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomMainContainer(
      height: 450,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(defaultRadius),
              color: whiteColor,
              boxShadow: [
                BoxShadow(
                  color: blackColor.withOpacity(0.25),
                  blurRadius: 4,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              children: [
                Container(
                  width: 200.w,
                  height: 200.h,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/image_4.png"),
                    ),
                  ),
                ),
                Text(
                  'Kehadiran telah tercatat',
                  style: defaultTextStyle.copyWith(
                    fontSize: 36.sp,
                  ),
                ),
              ],
            ),
          ),
          CustomButton(
            width: double.infinity.w,
            height: 60.h,
            title: "Kembali ke menu utama",
            fontSize: 32.sp,
            onPressed: () {
              Navigator.pushReplacementNamed(
                context,
                HomePage.routeName,
              );
            },
            margin: const EdgeInsets.only(top: 10),
          )
        ],
      ),
    );
  }
}
