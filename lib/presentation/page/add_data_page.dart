import 'package:flutter/cupertino.dart';
import 'package:perpus/presentation/widget/custom_button.dart';
import 'package:perpus/presentation/widget/custom_dropdown.dart';
import 'package:perpus/presentation/widget/custom_textfield.dart';
import 'package:perpus/presentation/widget/custom_util_container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddDataPage extends StatelessWidget {
  static const routeName = '/add_data';
  const AddDataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomUtilContainer(
      title: 'Edit Data',
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
        ],
      ),
    );
  }
}
