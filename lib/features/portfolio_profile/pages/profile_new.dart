import 'package:flutter/material.dart';
import 'package:ysec_stock_market_app/features/portfolio_profile/pages/profile_summary.dart';
import 'package:ysec_stock_market_app/helpers/color/color_helper.dart';
import 'package:ysec_stock_market_app/helpers/text/text_helper.dart';
import 'package:ysec_stock_market_app/features/portfolio_profile/models/stock_chart.dart';
import 'package:ysec_stock_market_app/features/portfolio_profile/models/stock_profile.dart';
import 'package:ysec_stock_market_app/features/portfolio_profile/models/stock_quote.dart';
import 'package:ysec_stock_market_app/helpers/styles.dart';



class Profile extends StatelessWidget {

  final Color color;
  final StockQuote stockQuote;
  final StockProfile stockProfile;
  final List<StockChart> stockChart;

  const Profile({super.key, 
    required this.color,
    required this.stockProfile,
    required this.stockQuote,
    required this.stockChart,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.only(left: 26, right: 26, top: 26),
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(this.stockQuote.name ?? '-', style: kProfileCompanyName),

            _buildPrice(),
           

            StatisticsWidget(
              quote: stockQuote,
              profile: stockProfile,
            )
          ],
        ),
      ],
    );
  }

  Widget _buildPrice() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('₹${stockQuote.price}', style: priceStyle),
          const SizedBox(height: 8),
          Text('${determineTextBasedOnChange(double.tryParse(stockQuote.change) ?? 0)}  (${determineTextPercentageBasedOnChange(double.tryParse(stockQuote.changesPercentage) ?? 0)})', 
            style: determineTextStyleBasedOnChange(double.tryParse(stockQuote.change) ?? 0)
          )
        ],
      ),
    );
  }
}