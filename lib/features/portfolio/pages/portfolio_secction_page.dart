import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ysec_stock_market_app/features/portfolio/bloc/portfolio_bloc.dart';
import 'package:ysec_stock_market_app/helpers/color/color_helper.dart';
import 'package:ysec_stock_market_app/features/portfolio/pages/portfolio_stonks.dart';
import 'package:ysec_stock_market_app/features/portfolio/widgets/heading/portfolio_heading.dart';


class PortfolioSectionPage extends StatelessWidget {
  const PortfolioSectionPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffoldBackground,
      body:_buildContent(context)
    );
  }

  

  Widget _buildContent(context) {
    return RefreshIndicator(
      child: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          children: const [
            PortfolioHeadingSection(),
            PortfolioStonksSection()
          ]
        )
      ),

      onRefresh: () async {
        // Reload stocks section.
        BlocProvider
        .of<PortfolioBloc>(context)
        .add(FetchPortfolioData());
      },
    );
  }

}