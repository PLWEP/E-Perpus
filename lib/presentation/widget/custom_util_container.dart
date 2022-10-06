import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:perpus/presentation/widget/custom_button.dart';
import 'package:perpus/utils/theme.dart';

class CustomUtilContainer extends StatelessWidget {
  final String title;
  final Widget child;
  final Function() onPressed;
  const CustomUtilContainer(
      {Key? key,
      required this.title,
      required this.child,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/background.png',
            ),
          ),
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 800.w,
                padding: const EdgeInsets.all(15),
                margin: const EdgeInsets.only(
                  top: 20,
                  left: 10,
                  right: 10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(defaultRadius),
                  color: whiteColor,
                  boxShadow: [
                    BoxShadow(
                      color: blackColor.withOpacity(0.25),
                      blurRadius: 10,
                      offset: const Offset(2, 4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: defaultTextStyle.copyWith(fontSize: 36.sp),
                    ),
                    const Divider(),
                    CustomButton(
                      width: 150.w,
                      height: 50.h,
                      title: 'Kembali',
                      fontSize: 24.sp,
                      onPressed: onPressed,
                    ),
                    child,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
