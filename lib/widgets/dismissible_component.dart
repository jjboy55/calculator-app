import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../provider/calculator_model.dart';
import '../util/colors.dart';
import 'input_detail.dart';

class DismissibleComponent extends StatelessWidget {
  const DismissibleComponent({
    super.key,
    required this.calculator,
    required this.index,
  });

  final CalculatorModel calculator;
  final int index;

  @override
  Widget build(BuildContext context) {
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
        },
        child: const InputDetails());
  }
}
