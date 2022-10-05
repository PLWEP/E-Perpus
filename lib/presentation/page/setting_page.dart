import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:perpus/presentation/page/add_data_page.dart';
import 'package:perpus/presentation/page/edit_data_page.dart';
import 'package:perpus/presentation/widget/custom_button.dart';
import 'package:perpus/presentation/widget/custom_util_container.dart';

class SettingPage extends StatelessWidget {
  static const routeName = '/setting_page';
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomUtilContainer(
      title: 'Pengaturan',
      child: Column(
        children: [
          CustomButton(
            width: double.infinity.w,
            height: 60.h,
            title: "Tambah data",
            fontSize: 32.sp,
            onPressed: () {
              Navigator.pushReplacementNamed(
                context,
                AddDataPage.routeName,
              );
            },
            margin: const EdgeInsets.only(top: 10),
          ),
          CustomButton(
            width: double.infinity.w,
            height: 60.h,
            title: "Edit data",
            fontSize: 32.sp,
            onPressed: () {
              Navigator.pushReplacementNamed(
                context,
                EditDataPage.routeName,
              );
            },
            margin: const EdgeInsets.only(top: 10),
          ),
          CustomButton(
            width: double.infinity.w,
            height: 60.h,
            title: "Cetak data tamu",
            fontSize: 32.sp,
            onPressed: () {},
            margin: const EdgeInsets.only(top: 10),
          ),
        ],
      ),
    );
  }
}
