
import 'package:ysec_stock_market_app/features/portfolio_profile/models/profile.dart';
import 'package:ysec_stock_market_app/features/portfolio_profile/models/stock_profile.dart';
import 'package:ysec_stock_market_app/features/portfolio_profile/models/stock_quote.dart';
import 'package:ysec_stock_market_app/features/search/models/watch_list_model.dart';
import 'package:ysec_stock_market_app/features/portfolio/repositories/client.dart';

class ProfileClient {

  Future<ProfileModel> fetchStockData({required String symbol}) async {
    final response = WatchListModel.fromJson(watchListJson).data?.firstWhere(
          (element) => element.symbol == symbol,
          orElse: () => Datum(),
        );
    return ProfileModel(
      stockQuote: StockQuote(
        avgVolume: response?.trdVol?.toString() ?? '0',
        symbol: response?.symbol ?? '',
        change: response?.iislPtsChange?.toString() ?? '0',
        changesPercentage: response?.iislPercChange?.toString() ?? '0',
        dayHigh: response?.high?.toString() ?? '0',
        dayLow: response?.low?.toString() ?? '0',
        eps: '0',
        marketCap: '0',
        name: response?.symbol ?? '',
        open: response?.open?.toString() ?? '0',
        pe: '0',
        previousClose: response?.previousClose?.toString() ?? '0',
        price: response?.open?.toString() ?? '0',
        volume: response?.trdVol?.toString() ?? '0',
        yearHigh: response?.wkhi?.toString() ?? '0',
        yearLow: response?.wklo?.toString() ?? '0',
        sharesOutstanding: '0',
      ),
      stockProfile: StockProfile(
        beta: '',
        ceo: '',
        changes: double.tryParse(response?.iislPtsChange.toString() ?? '') ?? 0,
        changesPercentage: response?.iislPercChange ?? '',
        companyName: response?.symbol ?? '',
        description: '',
        exchange: response?.exchange?.name ?? '',
        industry: '',
        mktCap: '',
        price: double.tryParse(response?.open.toString() ?? '') ?? 0,
        sector: '',
        volAvg: response?.trdVolM ?? '',
      ),
    );
  }
}
