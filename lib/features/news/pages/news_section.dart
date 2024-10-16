import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ysec_stock_market_app/features/news/bloc/news_bloc.dart';
import 'package:ysec_stock_market_app/features/news/pages/news.dart';
import 'package:ysec_stock_market_app/helpers/color/color_helper.dart';
import 'package:ysec_stock_market_app/shared/widgets/header.dart';
class NewsSection extends StatefulWidget {
  const NewsSection({super.key});

  @override
  State<NewsSection> createState() => _NewsSectionState();
}

class _NewsSectionState extends State<NewsSection> {

  @override
  void initState() {
     BlocProvider
          .of<NewsBloc>(context)
          .add(FetchNews());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffoldBackground,
      body: _buildContent(context)
    );
  }



  Widget _buildContent(context) {
    return RefreshIndicator(
      child: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          children: [

            StandardHeader(
              title: 'Latest News',
              subtitle: 'Portfolio Related',
              action: Container(),
            ),

            const NewsSectionWidget()
          ]
        )
      ),

      onRefresh: () async {
        // Reload markets section.
        BlocProvider
        .of<NewsBloc>(context)
        .add(FetchNews());
      },
    );
  }
}