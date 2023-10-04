import 'package:calculatorapp/util/colors.dart';
import 'package:calculatorapp/widgets/custom_dropdown_int.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../util/decoration_widgets.dart';
import 'custom_dropdown_button.dart';

class InputDetails extends StatelessWidget {
  const InputDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Course Title',
                    style: TextStyle(fontSize: 12.sp, color: kTextColor),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  SizedBox(
                    width: 165.w,
                    height: 40.h,
                    child: TextField(
                      decoration: kFormFieldDecoration,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 4.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Grade',
                    style: TextStyle(fontSize: 12.sp, color: kTextColor),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  const CustomDropDownButton(),
                ],
              ),
              SizedBox(
                width: 4.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Unit',
                    style: TextStyle(fontSize: 12.sp, color: kTextColor),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  const CustomDropDownButtonInt(),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 16.h,
          ),
        ],
      ),
    );
  }
}
