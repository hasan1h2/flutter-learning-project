import 'package:flutter/material.dart';

PreferredSizeWidget myAppBar({
  required String title,
  Color backgroundColor = Colors.cyan,
  TextStyle? titleStyle,
  List<Widget>? actions,
  Widget? leading,
}) {
  return AppBar(
    backgroundColor: backgroundColor,
    title: Text(
      title,
      style: titleStyle ??
          const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
    ),
    centerTitle: true,
    leading: leading,
    actions: actions,
  );
}
