import 'package:flutter/material.dart';
Color determineColorBasedOnChange(double change ) {
  return change < 0 
    ? kNegativeColor 
    : kPositiveColor;
}

TextStyle determineTextStyleBasedOnChange(double change ) {
  return change < 0 
    ?  kNegativeChange
    : kPositiveChange;
}

const TextStyle kPositiveChange = TextStyle(
  color: kPositiveColor,
  fontSize: 16,
  fontWeight: FontWeight.w800
);

const TextStyle kNegativeChange = TextStyle(
  color: kNegativeColor,
  fontSize: 16,
  fontWeight: FontWeight.w800
);


const kTileColor = Color(0XFF181818);

const kNegativeColor =  Color(0xFFF44336);
const kPositiveColor = Color(0XFF17a862);

const kLightGray = Color(0XFFcdcdcd);
const kLighterGray = Color(0XFF898989);
const kGray = Color(0XFF757575);

const kScaffoldBackground = Color(0XFF0e0e0e);
const kTransparentWhite = Color(0X88ffffff);