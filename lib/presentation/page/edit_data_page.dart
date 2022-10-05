import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:perpus/presentation/widget/custom_dropdown.dart';
import 'package:perpus/presentation/widget/custom_util_container.dart';

class EditDataPage extends StatelessWidget {
  static const routeName = '/edit_data_page';
  const EditDataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomUtilContainer(
      title: 'Edit Data',
      child: Column(
        children: const [
          CustomDropdown(),
        ],
      ),
    );
  }
}
