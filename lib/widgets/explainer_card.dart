import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../util/colors.dart';
import '../util/decoration_widgets.dart';

class ExplainerCard extends StatelessWidget {
  const ExplainerCard({
    super.key,
    required this.pixRatio,
  });

  final double pixRatio;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: kBlueColor,
          ),
          child: Padding(
            padding: EdgeInsets.only(
              left: 21 / pixRatio,
              right: 21 / pixRatio,
              top: 21 / pixRatio,
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Calculate Your GPA in \nSeconds',
                      style: kPrimaryWhiteTextStyle,
                    ),
                    SizedBox(
                      height: 10 / pixRatio,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        bottom: 10,
                      ),
                      child: Text(
                        'Welcome to our GPA Calculator! With just a few taps,\ncalculate your GPA.',
                        style:
                            TextStyle(color: kPrimaryWhiteColor, fontSize: 13),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 21 / pixRatio,
                ),
                Expanded(
                  child: SvgPicture.asset(
                    'assets/green_girl.svg',
                    height: 100,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
