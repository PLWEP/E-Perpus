import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:perpus/presentation/page/class_selection_page.dart';
import 'package:perpus/utils/theme.dart';

class CustomHomeItem extends StatelessWidget {
  final String imageUrl;
  const CustomHomeItem({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacementNamed(
          context,
          ClassSelectionPage.routeName,
        );
      },
      child: Container(
        width: 200.w,
        height: 200.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(defaultRadius),
          color: whiteColor,
          image: DecorationImage(
            image: AssetImage(imageUrl),
          ),
          boxShadow: [
            BoxShadow(
              color: blackColor.withOpacity(0.25),
              blurRadius: 4,
              offset: const Offset(0, 4),
            ),
          ],
        ),
      ),
    );
  }
}
