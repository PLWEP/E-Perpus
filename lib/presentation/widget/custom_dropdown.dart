import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:perpus/utils/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDropdown extends StatefulWidget {
  const CustomDropdown({Key? key}) : super(key: key);

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  final List<String> items = [
    '7.1',
    '7.2',
    '7.3',
    '7.4',
    '7.5',
    '8.1',
    '8.2',
    '8.3',
    '8.4',
    '8.5',
    '9.1',
    '9.2',
    '9.3',
    '9.4',
    '9.5',
  ];

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
            items: items
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
