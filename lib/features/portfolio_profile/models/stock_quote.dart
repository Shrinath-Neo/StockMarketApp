class StockQuote {
  final String symbol;
  final String name;

  final String price;
  final String changesPercentage;
  final String change;
  final String dayLow;
  final String dayHigh;
  final String yearHigh;
  final String yearLow;
  final String marketCap;

  final String volume;
  final String avgVolume;

  final String open;
  final String previousClose;
  final String eps;
  final String pe;
  
  final String sharesOutstanding;

  StockQuote({
    required this.symbol,
    required this.name,
    required this.price,
    required this.changesPercentage,
    required this.change,
    required this.dayLow,
    required this.dayHigh,
    required this.yearHigh,
    required this.yearLow,
    required this.marketCap,
    required this.volume,
    required this.avgVolume,
    required this.open,
    required this.previousClose,
    required this.eps,
    required this.pe,
    required this.sharesOutstanding,
  });

  factory StockQuote.fromJson(Map<String, dynamic> json) {
    return StockQuote(
      symbol: json['symbol'],
      name: json['name'],
      price: json['price'],
      changesPercentage: json['changesPercentage'],
      change: json['change'],
      dayLow: json['dayLow'],
      dayHigh: json['dayHigh'],
      yearHigh: json['yearHigh'],
      yearLow: json['yearLow'],
      marketCap: json['marketCap'],
      volume: json['volume'],
      avgVolume: json['avgVolume'],
      open: json['open'],
      previousClose: json['previousClose'],
      eps: json['eps'],
      pe: json['pe'],
      sharesOutstanding: json['sharesOutstanding'],
    );
  }

}