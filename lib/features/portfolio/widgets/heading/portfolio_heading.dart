import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:ysec_stock_market_app/shared/widgets/header.dart';


class PortfolioHeadingSection extends StatelessWidget {
  const PortfolioHeadingSection({super.key});

  @override
  Widget build(BuildContext context) {

    final String formattedDate = DateFormat('MMMMd').format(DateTime.now());

    return StandardHeader(
      title: 'Portfolio',
      subtitle: formattedDate,
      action: const Icon(FontAwesomeIcons.user),
    );
  }
}