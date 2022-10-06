import 'package:flutter/material.dart';
import 'package:perpus/presentation/page/setting_page.dart';
import 'package:perpus/presentation/widget/custom_button.dart';
import 'package:perpus/presentation/widget/custom_dropdown.dart';
import 'package:perpus/presentation/widget/custom_list_tile.dart';
import 'package:perpus/presentation/widget/custom_textfield.dart';
import 'package:perpus/presentation/widget/custom_util_container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:perpus/utils/theme.dart';

class AddDataPage extends StatelessWidget {
  static const routeName = '/add_data';
  const AddDataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomUtilContainer(
      title: 'Edit Data',
      onPressed: () {
        Navigator.pushReplacementNamed(
          context,
          SettingPage.routeName,
        );
      },
      child: Column(
        children: [
          const CustomTextField(),
          const CustomDropdown(),
          CustomButton(
            width: double.infinity,
            height: 50.h,
            title: 'Submit',
            fontSize: 24.sp,
            onPressed: () {},
            margin: const EdgeInsets.only(top: 10),
          ),
          const SizedBox(height: 10),
          Text(
            'Lihat Data',
            style: defaultTextStyle.copyWith(fontSize: 36.sp),
          ),
          const Divider(),
          const CustomDropdown(),
          const SizedBox(height: 10),
          CustomListTile(
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
