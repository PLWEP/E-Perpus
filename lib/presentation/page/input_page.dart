import 'package:flutter/material.dart';
import 'package:perpus/presentation/page/class_selection_page.dart';
import 'package:perpus/presentation/widget/custom_button.dart';
import 'package:perpus/presentation/widget/custom_list_tile.dart';
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
            margin: const EdgeInsets.only(bottom: 10),
            onPressed: () {
              Navigator.pushReplacementNamed(
                context,
                ClassSelectionPage.routeName,
              );
            },
          ),
          CustomListTile(
            name: 'name',
            className: '7.1',
            trailing: IconButton(
              icon: const Icon(Icons.save),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
