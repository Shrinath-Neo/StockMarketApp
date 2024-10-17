
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ysec_stock_market_app/features/portfolio_profile/bloc/profile_bloc.dart';
import 'package:ysec_stock_market_app/features/search/bloc/search_bloc.dart';
import 'package:ysec_stock_market_app/features/search/models/search.dart';
import 'package:ysec_stock_market_app/features/portfolio_profile/pages/profile_page.dart';
import 'package:ysec_stock_market_app/features/search/pages/search_results/search_history.dart';
import 'package:ysec_stock_market_app/features/search/pages/search_results/search_results.dart';
import 'package:ysec_stock_market_app/shared/widgets/loading_indicator.dart';
import 'package:ysec_stock_market_app/shared/widgets/message.dart';


class SearchSectionScreen extends StatelessWidget {
  const SearchSectionScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (BuildContext context, SearchState state) {

        if (state is SearchInitial) {
          BlocProvider
          .of<SearchBloc>(context)
          .add(FetchSearchHistory());
        }

        if (state is SearchResultsLoadingError) {
          return MessageScreen(message: state.message, action: Container());
        }

        if (state is SearchData) {
          return _buildWrapper(context,data: state.data, listType: state.listType);
        }

        return Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 4),
          child: const LoadingIndicatorWidget(),
        );
      }
    );
  }

  Widget _buildWrapper(BuildContext context,{required List<StockSearch> data,required ListType listType}) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: data.length,
      itemBuilder: (BuildContext ctx, int i) {
        return listType == ListType.searchHistory 
        ? SearchHistoryWidget(search: data[i])
        : SearchResultsWidget(search: data[i],onTap: (){
           Navigator
        .push(context, MaterialPageRoute(builder: (_) => ProfilePage( symbol: data[i].symbol)));
        // Save event.
        BlocProvider
        .of<SearchBloc>(context)
        .add(SaveSearch(symbol: data[i].symbol));

        // Fetch profile event.
        BlocProvider
        .of<ProfileBloc>(context)
        .add(FetchProfileData(symbol:data[i].symbol));
        },);
      }
    );
  }
}
