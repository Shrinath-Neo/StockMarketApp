import 'package:intl/intl.dart';

String displayDefaultTextIfNull(String text) {
  return text.isEmpty ? '-' : text;
}

String formatText(dynamic text ) {
  return text.toString() ;
}

String compactText(dynamic text ) {
  final convert = double.tryParse(text) ?? 0;
  return convert == 0 ? '-' : NumberFormat.compact().format(convert);
}

/// This function will add a + sign to an string
/// based on the [change].
String determineTextBasedOnChange(double change) {
  return change < 0 
    ? formatText(change) 
    : '+${formatText(change)}';
}

/// This function will add a + sign to an string
/// based on the [change].
String determineTextPercentageBasedOnChange(double change) {
  return change < 0 
    ? '${formatText(change)}%' 
    : '+${formatText(change)}%';
}