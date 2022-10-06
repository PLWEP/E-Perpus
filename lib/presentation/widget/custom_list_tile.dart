import 'package:flutter/material.dart';
import 'package:perpus/utils/theme.dart';

class CustomListTile extends StatelessWidget {
  final Widget trailing;
  final String name;
  final String className;
  const CustomListTile(
      {Key? key,
      required this.trailing,
      required this.name,
      required this.className})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        leading: const Icon(Icons.people),
        title: Text(
          name,
          style: defaultTextStyle.copyWith(
            fontSize: 16,
          ),
        ),
        subtitle: Text(
          className,
          style: defaultTextStyle,
        ),
        trailing: trailing,
      ),
    );
  }
}
