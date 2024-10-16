

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ysec_stock_market_app/features/portfolio_profile/bloc/profile_bloc.dart';
import 'package:ysec_stock_market_app/features/portfolio_profile/pages/profile.dart';
import 'package:ysec_stock_market_app/features/search/bloc/search_bloc.dart';
import 'package:ysec_stock_market_app/features/search/models/search.dart';



class SearchHistoryWidget extends StatelessWidget {

  final StockSearch search;

  const SearchHistoryWidget({super.key, 
    required this.search
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.history),
      title: Text(search.symbol),

      onTap: () {
        Navigator
        .push(context, MaterialPageRoute(builder: (_) => Profile(symbol: search.symbol,)));
        
        BlocProvider
        .of<ProfileBloc>(context)
        .add(FetchProfileData(symbol: search.symbol));
      },

      trailing: IconButton(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        icon: const Icon(Icons.clear), 
        
        onPressed: () {
          BlocProvider
          .of<SearchBloc>(context)
          .add(DeleteSearch(symbol: search.symbol));
        }
      )
    );
  }
}