import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ysec_stock_market_app/features/portfolio/bloc/portfolio_bloc.dart';
import 'package:ysec_stock_market_app/shared/models/data_overview.dart';
import 'package:ysec_stock_market_app/features/portfolio_profile/models/market_index.dart';
import 'package:ysec_stock_market_app/features/portfolio/widgets/content/portfolio_index.dart';
import 'package:ysec_stock_market_app/features/portfolio/widgets/content/portfolio_stonk.dart';
import 'package:ysec_stock_market_app/shared/widgets/empty_screen.dart';
import 'package:ysec_stock_market_app/shared/widgets/loading_indicator.dart';

class PortfolioStonksSection extends StatelessWidget {
  const PortfolioStonksSection({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PortfolioBloc, PortfolioState>(
      builder: (BuildContext context, PortfolioState state) {
       

        if (state is PortfolioInitial) {
          BlocProvider
          .of<PortfolioBloc>(context)
          .add(FetchPortfolioData());
        }

        if (state is PortfolioError) {
          return Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 3),
            child: EmptyScreen(message: state.message),
          );
        }

        if (state is PortfolioStockEmpty) {
          return Column(
            children: <Widget>[
              _buildIndexesSection(indexes: state.indexes),
              
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height / 5,
                  horizontal: 4
                ),
                child: const EmptyScreen(message: 'Looks like you don\'t have any holdings in your watchlist.'),
              ),
            ],
          );
        }

        if (state is PortfolioLoaded) {
        
          return Column(
            children: <Widget>[
              _buildIndexesSection(indexes: state.indexes),
              _buildStocksSection(stocks: state.stocks)              
            ],
          );
        }

        return Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 3),
          child: const LoadingIndicatorWidget(),
        );
      },
    );
  }

  Widget _buildIndexesSection({required List<MarketIndexModel> indexes}) {
    return Container(
      height: 75,
      margin: const EdgeInsets.only(top: 16, bottom: 16),
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        addAutomaticKeepAlives: false,
        addRepaintBoundaries: false,
        scrollDirection: Axis.horizontal,
        itemCount: indexes.length,
        itemBuilder: (BuildContext context, int index) {
          return PortfolioIndexWidget(index: indexes[index]);
        }
      ),
    );
  }
  
  Widget _buildStocksSection({required List<StockOverviewModel> stocks}) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      itemCount: stocks.length,
      itemBuilder: (BuildContext context, int index) {
        return PortfolioStockCard(data: stocks[index]);
      }
    );
  }
}
