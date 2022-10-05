import 'package:flutter/cupertino.dart';
import 'package:perpus/presentation/page/input_page.dart';
import 'package:perpus/utils/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomClassItem extends StatelessWidget {
  final String title;
  const CustomClassItem({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          InputPage.routeName,
        );
      },
      child: Container(
        width: 100.w,
        height: 100.h,
        margin: const EdgeInsets.only(right: 10),
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
        child: Center(
          child: Text(
            title,
            style: defaultTextStyle.copyWith(
              fontSize: 32.sp,
            ),
          ),
        ),
      ),
    );
  }
}
