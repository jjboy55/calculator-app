import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../util/colors.dart';
import '../util/decoration_widgets.dart';

class GeneralButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  const GeneralButton({
    required this.text,
    this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
          backgroundColor: kBlueColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          )),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 14.h),
        child: Text(
          text,
          style: kButtonTextStyle,
        ),
      ),
    );
  }
}
