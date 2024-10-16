
import 'package:ysec_stock_market_app/features/news/models/single_new_model.dart';
import 'package:ysec_stock_market_app/features/news/repositories/news_client.dart';

class NewsRepository extends NewsClient {
  
  Future<List<Article>> fetchNews({required String title}) async {
    return await super.fetchNews(title: title);
  }

}