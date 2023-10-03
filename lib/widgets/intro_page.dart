import 'package:calculatorapp/util/decoration_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../screens/gpa_screen.dart';
import 'general_button.dart';

class IntroPage extends StatelessWidget {
  final String svgPicture;
  final String boldText;
  final String bodyText;

  const IntroPage({
    super.key,
    required this.bodyText,
    required this.boldText,
    required this.svgPicture,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * (1 / 15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: height * 0.07,
          ),
          SvgPicture.asset(svgPicture),
          SizedBox(
            height: height * (1 / 20),
          ),
          Text(
            boldText,
            style: kPrimaryTextField,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: height * (1 / 50),
          ),
          Text(
            bodyText,
            style: kSecondaryTextStyle,
            textAlign: TextAlign.center,
          ),
          const Flexible(
            child: FractionallySizedBox(
              heightFactor: (0.7),
            ),
          ),
          GeneralButton(
            text: 'Next',
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const GpaScreen()));
            },
          ),
        ],
      ),
    );
  }
}
