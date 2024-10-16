
import 'package:flutter/material.dart';
import 'package:ysec_stock_market_app/features/search/models/search.dart';


class SearchResultsWidget extends StatelessWidget {

  final StockSearch search;
  final Function()? onTap;

  const SearchResultsWidget({super.key, 
    required this.search, this.onTap
  });
  
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.search),
      title: Text(search.symbol),
      onTap: onTap,
    );
  }
}