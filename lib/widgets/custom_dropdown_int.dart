import 'package:calculatorapp/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import '../provider/calculator_model.dart';
import '../util/decoration_widgets.dart';

class CustomDropDownButtonInt extends StatelessWidget {
  const CustomDropDownButtonInt({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var calculator = context.watch<CalculatorModel>();
    return DropdownMenuTheme(
      data: DropdownMenuTheme.of(context).copyWith(
        inputDecorationTheme: kFormFieldDecorationTheme.copyWith(
            constraints: BoxConstraints(
          maxHeight: 40.h,
        )),
      ),
      child: DropdownMenu<int>(
        onSelected: (value) => calculator.getValue(value),
        width: 76.w,
        trailingIcon: Icon(
          Iconsax.arrow_down_14,
          size: 14.sp,
          color: kPrimaryBlackColor,
        ),
        dropdownMenuEntries: calculator.dropdownMenuEntriesint,
      ),
    );
  }
}
