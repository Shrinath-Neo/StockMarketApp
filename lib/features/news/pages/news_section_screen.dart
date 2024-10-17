import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ysec_stock_market_app/features/news/bloc/news_bloc.dart';
import 'package:ysec_stock_market_app/features/news/widgets/news_card.dart';
import 'package:ysec_stock_market_app/shared/widgets/empty_screen.dart';
import 'package:ysec_stock_market_app/shared/widgets/loading_indicator.dart';


class NewsSectionScreen extends StatelessWidget {
  const NewsSectionScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsBloc, NewsState>(
      builder: (BuildContext context, NewsState state) {

      

        if (state is NewsError) {
          return Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 3),
            child: EmptyScreen(message: state.message),
          );
        }

        if (state is NewsLoaded) {
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.news.length,
            itemBuilder: (BuildContext context, int index) {

              // Ensure that we don't have empty headlines.
              if (state.news.isEmpty ) {
                return EmptyScreen(message: 'There are no news related to ${state.news[index].title}.');
              }

              return NewsCardWidget(
                title: state.news[index].title ?? '',
                news: state.news,
              );
            },
          );
        }

        return Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height / 3,
            left: 4,
            right: 4
          ),
          child: const LoadingIndicatorWidget(),
        );
      }
    );
  }

}
