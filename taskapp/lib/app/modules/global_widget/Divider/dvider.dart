import 'package:flutter/material.dart';
import '../../../data/utils/static_colors/static_colors.dart';
class Dvider extends StatelessWidget {
  const Dvider({super.key, required this.diverTitle});
  final String diverTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            thickness: 1.5,
            color: Color(StaticColors.slateColor),
            indent: 10,
            endIndent: 10,
          ),
        ),
        Text(
          diverTitle,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Color(0xff0A0E23),
          ),
        ),

        Expanded(
          child: Divider(
            thickness: 1.5,
            color: Color(StaticColors.slateColor),
            indent: 10,
            endIndent: 10,
          ),
        ),
      ],
    );
  }
}
