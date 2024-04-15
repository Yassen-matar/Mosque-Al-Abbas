import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mosque/theme/colors.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Color color;
  final Function() onpressed;
  final TextStyle style;
  const CustomButton(
      {super.key,
      required this.title,
      this.color = CustomColors.primaryColor,
      required this.onpressed,
      required this.style});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        height: 40.h,
        elevation: 10,
        minWidth: 200.w,
        onPressed: onpressed,
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          title,
          style: style,
        ));
  }
}
