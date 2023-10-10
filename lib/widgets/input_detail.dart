import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import '../provider/calculator_model.dart';
import '../util/colors.dart';
import '../util/decoration_widgets.dart';

class FormDetails extends StatefulWidget {
  const FormDetails({
    super.key,
    required this.calculator,
  });
  final CalculatorModel calculator;

  @override
  State<FormDetails> createState() => _FormDetailsState();
}

class _FormDetailsState extends State<FormDetails> {
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
                  DropdownMenuTheme(
                    data: DropdownMenuTheme.of(context).copyWith(
                      inputDecorationTheme: kFormFieldDecorationTheme.copyWith(
                        constraints: BoxConstraints(
                          maxHeight: 40.h,
                        ),
                      ),
                    ),
                    child: DropdownMenu<String>(
                      width: 99.w,
                      trailingIcon: Icon(
                        Iconsax.arrow_down_14,
                        size: 14.sp,
                        color: kPrimaryBlackColor,
                      ),
                      dropdownMenuEntries:
                          widget.calculator.dropdownMenuEntries,
                      onSelected: (value) {
                        setState(() {
                          widget.calculator.getGrade(value);
                        });
                      },
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
                    'Unit',
                    style: TextStyle(fontSize: 12.sp, color: kTextColor),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  DropdownMenuTheme(
                    data: DropdownMenuTheme.of(context).copyWith(
                      inputDecorationTheme: kFormFieldDecorationTheme.copyWith(
                          constraints: BoxConstraints(
                        maxHeight: 40.h,
                      )),
                    ),
                    child: DropdownMenu<int>(
                      onSelected: (value) {
                        setState(() {
                          widget.calculator.getValue(value);
                          widget.calculator.addValuesToList();
                        });
                      },
                      width: 76.w,
                      trailingIcon: Icon(
                        Iconsax.arrow_down_14,
                        size: 14.sp,
                        color: kPrimaryBlackColor,
                      ),
                      dropdownMenuEntries:
                          widget.calculator.dropdownMenuEntriesint,
                    ),
                  ),
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
