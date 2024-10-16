import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:ysec_stock_market_app/features/news/models/single_new_model.dart';
import 'package:ysec_stock_market_app/features/news/repositories/repository.dart';

part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final NewsRepository _newsRepository = NewsRepository();

  NewsBloc() : super(NewsInitial()) {
    on<FetchNews>(_onFetchNews);
  }

  // Event handler for fetching news
  Future<void> _onFetchNews(FetchNews event, Emitter<NewsState> emit) async {
    emit(NewsLoading());
    await _fetchNews(emit);
  }

  // Fetch news data and manage states
  Future<void> _fetchNews(Emitter<NewsState> emit) async {
    try {
      final news = await _newsRepository.fetchNews(title: "Dow Jones");

      emit(NewsLoaded(news: news));
      // }
    } catch (e) {
      emit(NewsError(message: 'There was an error loading'));
    }
  }
}
