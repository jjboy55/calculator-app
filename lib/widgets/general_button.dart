import 'package:flutter/material.dart';

import '../screens/gpa_screen.dart';
import '../util/colors.dart';
import '../util/decoration_widgets.dart';

class GeneralButton extends StatelessWidget {
  const GeneralButton({
    super.key,
    required this.pixRatio,
  });

  final double pixRatio;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const GpaScreen()));
      },
      style: TextButton.styleFrom(backgroundColor: kBlueColor),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 14 / pixRatio),
        child: const Text(
          'Next',
          style: kButtonTextStyle,
        ),
      ),
    );
  }
}
