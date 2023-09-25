import 'package:calculatorapp/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../widgets/explainer_card.dart';

class GpaScreen extends StatefulWidget {
  const GpaScreen({super.key});

  @override
  State<GpaScreen> createState() => _GpaScreenState();
}

class _GpaScreenState extends State<GpaScreen> {
  @override
  Widget build(BuildContext context) {
    double pixRatio = MediaQuery.of(context).devicePixelRatio;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20 / pixRatio,
            vertical: 20 / pixRatio,
          ),
          child: Column(
            children: [
              ExplainerCard(pixRatio: pixRatio),
              SizedBox(
                height: 42 / pixRatio,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Iconsax.add_circle,
                        size: 38 / pixRatio,
                        color: kSecondaryBlackColor,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      const Text(
                        'Add Course',
                        style: TextStyle(
                            decoration: TextDecoration.underline, fontSize: 14),
                      ),
                    ],
                  ),
                  const Text(
                    'Clear',
                    style: TextStyle(color: kBlueColor, fontSize: 14),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
