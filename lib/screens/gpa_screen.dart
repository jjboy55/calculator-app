import 'package:calculatorapp/provider/calculator_model.dart';
import 'package:calculatorapp/util/colors.dart';
import 'package:calculatorapp/util/decoration_widgets.dart';
import 'package:calculatorapp/widgets/general_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import '../widgets/explainer_card.dart';
import '../widgets/input_detail.dart';

class GpaScreen extends StatelessWidget {
  const GpaScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var calculator = context.watch<CalculatorModel>();
    double pixRatio = MediaQuery.of(context).devicePixelRatio;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ExplainerCard(pixRatio: pixRatio),
              SizedBox(
                height: 46 / pixRatio,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Iconsax.add_circle,
                        size: 18.h,
                        color: kSecondaryBlackColor,
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      GestureDetector(
                        onTap: () {
                          calculator.addItems(
                            FormDetails(calculator: calculator),
                          );
                        },
                        child: const Text(
                          'Add Course',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      // calculator.removeAll();
                      // calculator.totalGpa.clear();
                      calculator.getGradeUnit();
                      calculator.addTotaltoList();
                      calculator.addSumOfUnits();
                      calculator.sumUnits();
                      print(calculator.totalUnit);
                      calculator.sumValues();
                      print(calculator.totalGpa);
                    },
                    child: const Text(
                      'Clear',
                      style: TextStyle(
                        color: kBlueColor,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 22.h,
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: calculator.userInputs.length,
                      itemBuilder: (context, index) {
                        return Dismissible(
                          direction: DismissDirection.endToStart,
                          background: Container(
                            color: Colors.red,
                            child: const Icon(
                              Iconsax.trash,
                              color: kPrimaryWhiteColor,
                            ),
                          ),
                          key: UniqueKey(),
                          onDismissed: (direction) {
                            calculator.remove(index);
                            calculator.totalGpa.removeAt(index);
                          },
                          child: FormDetails(
                            calculator: calculator,
                          ),
                        );
                      })),
              Text(
                calculator.totalGpa.length.toString(),
                style: kSecondaryTextStyle,
                textAlign: TextAlign.center,
              ),
              GeneralButton(
                text: 'Calculate',
                onPressed: () {
                  print(calculator.totalGpaScore());

                  showDialog(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                            backgroundColor: Colors.transparent,
                            elevation: 0,
                            content: Container(
                              height: 269.h,
                              decoration: containerDecoration,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 20.h, horizontal: 55.w),
                                child: Column(
                                  children: [
                                    SvgPicture.asset(
                                      kGreenWoman,
                                      width: 191.w,
                                      height: 191.h,
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Text(
                                        'Your GPA is ${calculator.totalGpaScore()}',
                                        style: gpaResultTextStyle),
                                  ],
                                ),
                              ),
                            ),
                          ));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
