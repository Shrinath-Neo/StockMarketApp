import 'package:ysec_stock_market_app/features/portfolio_profile/models/stock_profile.dart';
import 'package:ysec_stock_market_app/features/portfolio_profile/models/stock_quote.dart';


class ProfileModel {

  final StockProfile stockProfile;
  final StockQuote stockQuote;

  ProfileModel({
    required this.stockProfile,
    required this.stockQuote,
  });
}
