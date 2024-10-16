
class StockOverviewModel {
  final String symbol;
  final String name;
  final String price;
  final String changesPercentage;
  final String change;

  StockOverviewModel({
    required this.symbol,
    required this.name,
    required this.price,
    required this.changesPercentage,
    required this.change
  });

  factory StockOverviewModel.fromJson(Map<String, dynamic> json) {
    return StockOverviewModel(
      symbol: json['symbol'],
      name: json['name'],
      price: json['price'],
      changesPercentage: json['changesPercentage'],
      change: json['change'],
    );
  }
}
