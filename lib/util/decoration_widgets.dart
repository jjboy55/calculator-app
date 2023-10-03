import 'package:flutter/material.dart';
import 'colors.dart';

const TextStyle kPrimaryTextField = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 18,
  color: kPrimaryBlackColor,
);

const TextStyle kSecondaryTextStyle = TextStyle(
  fontWeight: FontWeight.normal,
  fontSize: 14,
  color: kSecondaryBlackColor,
);

const TextStyle kButtonTextStyle = TextStyle(
  color: kPrimaryWhiteColor,
  fontSize: 17,
  fontWeight: FontWeight.bold,
);

const TextStyle kPrimaryWhiteTextStyle = TextStyle(
  color: kPrimaryWhiteColor,
  fontSize: 16,
  height: 1.5,
  fontWeight: FontWeight.bold,
);

const TextStyle kFormFieldTextStyle = TextStyle(
  color: kTextColor,
  fontSize: 12,
);

InputDecoration kFormFieldDecoration = InputDecoration(
  focusedBorder: OutlineInputBorder(
    borderSide: const BorderSide(color: kGreyColor),
    borderRadius: BorderRadius.circular(8),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: const BorderSide(color: kGreyColor),
    borderRadius: BorderRadius.circular(8),
  ),
);

InputDecorationTheme kFormFieldDecorationTheme = InputDecorationTheme(
  focusedBorder: OutlineInputBorder(
    borderSide: const BorderSide(color: kGreyColor),
    borderRadius: BorderRadius.circular(8),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: const BorderSide(color: kGreyColor),
    borderRadius: BorderRadius.circular(8),
  ),
);
