import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:perpus/presentation/bloc/student_bloc.dart';
import 'package:perpus/utils/list_class.dart';
import 'package:perpus/utils/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomDropdown extends StatefulWidget {
  const CustomDropdown({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  String? selectedValue;
  final TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(top: 20),
      child: Center(
        child: DropdownButtonHideUnderline(
          child: DropdownButton2(
            isExpanded: true,
            buttonPadding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            hint: Text(
              'Pilih Kelas',
              style: defaultTextStyle,
            ),
            items: listClass
                .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: defaultTextStyle,
                      ),
                    ))
                .toList(),
            value: selectedValue,
            onChanged: (value) {
              setState(() {
                selectedValue = value as String;
              });
              context.read<StudentBloc>().add(
                    ChangeClassNumber(selectedValue!),
                  );
            },
            buttonHeight: 70.h,
            buttonWidth: double.infinity.w,
            itemHeight: 40.h,
            dropdownMaxHeight: 300.h,
            searchController: textEditingController,
            searchInnerWidget: const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 15,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
