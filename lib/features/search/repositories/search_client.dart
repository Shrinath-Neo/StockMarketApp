
import 'package:sembast/sembast.dart';
import 'package:ysec_stock_market_app/helpers/database_helper.dart';
import 'package:ysec_stock_market_app/features/search/models/search.dart';
import 'package:ysec_stock_market_app/features/search/models/watch_list_model.dart';
import 'package:ysec_stock_market_app/features/portfolio/repositories/client.dart';


class SearchClient {

  final StoreRef<int, Map<String, dynamic>>  _store = intMapStoreFactory.store('search_history');

  // Sembast Database.
  Future<Database> get _database async => await DatabaseManager.instance.database;

  // Returns search results
  Future<List<StockSearch>> searchStock({required String symbol}) async {

   await Future.delayed(const Duration(seconds: 1));
    
    final response =WatchListModel.fromJson(watchListJson).data;
    final copy = [...response ?? []];
    copy.retainWhere((element) =>  element.symbol.toString().toLowerCase().contains(symbol.trim().toLowerCase()),);
   return copy.map((e) => StockSearch(symbol: e.symbol.toString())).toList();

  }
  
  // Gets all the symbols stored.
  Future<List<StockSearch>> fetch() async {

    final finder = Finder(sortOrders: [SortOrder(Field.key, false)]);
    final response = await _store.find(await _database, finder: finder);

    return response
    .map((snapshot) => StockSearch(symbol: snapshot.value['symbol'].toString() ))
    .toList();
  }
  
  // Saves a symbol in the database.
  Future<void> save({required String symbol}) async {
    await _store.add(await _database, {'symbol': symbol});
  }
  
  // Deletes a symbol from the database.
  Future<void> delete({required String symbol}) async {
    
    final finder = Finder(filter: Filter.matches('symbol', symbol));
    final response = await _store.findKey(await _database, finder: finder);
    final deleteFinder = Finder(filter: Filter.byKey(response));

    await _store.delete(await _database, finder: deleteFinder);
  }
  
}