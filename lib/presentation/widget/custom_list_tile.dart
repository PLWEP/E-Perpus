import 'package:flutter/material.dart';
import 'package:perpus/utils/theme.dart';

class CustomListTile extends StatelessWidget {
  final Widget trailing;
  const CustomListTile({Key? key, required this.trailing}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        leading: const Icon(Icons.people),
        title: Text(
          'Nama',
          style: defaultTextStyle.copyWith(
            fontSize: 16,
          ),
        ),
        subtitle: Text(
          'Kelas',
          style: defaultTextStyle,
        ),
        trailing: trailing,
      ),
    );
  }
}
