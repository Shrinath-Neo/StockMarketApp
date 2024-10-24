import 'package:flutter/material.dart';
import 'package:ysec_stock_market_app/helpers/color/color_helper.dart';


/// This is the common border radious of all the containers in the app.
const kStandatBorder = BorderRadius.all(Radius.circular(6));

/// This border is slightly more sharp than the standard boder.
const kSharpBorder = BorderRadius.all(Radius.circular(2));

/// This is the common text styling for a subtile. 
const kSubtitleStyling = TextStyle(
  color: kGray,
  fontSize: 24,
  fontWeight: FontWeight.w800
);

/// This is the common text styling for a subtile. 
const kCompanyNameHeading = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w800
);

const kProfileCompanyName = TextStyle(
  fontSize: 28,
  fontWeight: FontWeight.bold,
);

const kProfileScreenSectionTitle = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold
);

const priceStyle = TextStyle(
  fontSize: 26,
  fontWeight: FontWeight.bold,
);

const subtitleStyle = TextStyle(
  color: kLighterGray,
  fontSize: 14.5,
  height: 1.5
);