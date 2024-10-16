import 'dart:async';

import 'package:bloc/bloc.dart';

import 'package:meta/meta.dart';
import 'package:ysec_stock_market_app/features/search/models/search.dart';
import 'package:ysec_stock_market_app/features/search/repositories/search_client.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final _client = SearchClient();

  SearchBloc() : super(SearchInitial()) {
    // Event Handlers
    on<FetchSearchHistory>(_onFetchSearchHistory);
    on<SaveSearch>(_onSaveSearch);
    on<DeleteSearch>(_onDeleteSearch);
    on<FetchSearchResults>(_onFetchSearchResults);
  }

  // Fetch search history handler
  Future<void> _onFetchSearchHistory(
      FetchSearchHistory event, Emitter<SearchState> emit) async {
    await _fetchSavedSearches(emit);
  }

  // Save search handler
  Future<void> _onSaveSearch(
      SaveSearch event, Emitter<SearchState> emit) async {
    final data = await _client.fetch();
    if (!data
        .map(
          (e) => e.symbol,
        )
        .contains(event.symbol)) {
      await _client.save(symbol: event.symbol);
      await _fetchSavedSearches(emit);
    }
  }

  // Delete search handler
  Future<void> _onDeleteSearch(
      DeleteSearch event, Emitter<SearchState> emit) async {
    await _client.delete(symbol: event.symbol);
    await _fetchSavedSearches(emit);
  }

  // Fetch search results handler
  Future<void> _onFetchSearchResults(
      FetchSearchResults event, Emitter<SearchState> emit) async {
    emit(SearchLoading());
    await _fetchSearchResults(symbol: event.symbol, emit: emit);
  }

  // Fetch saved searches method
  Future<void> _fetchSavedSearches(Emitter<SearchState> emit) async {
    emit(SearchLoading());

    final data = await _client.fetch();

    emit(data.isEmpty
        ? SearchResultsLoadingError(message: 'No recent searches')
        : SearchData(data: data, listType: ListType.searchHistory));
  }

  // Fetch search results method
  Future<void> _fetchSearchResults(
      {required String symbol, required Emitter<SearchState> emit}) async {
    try {
      final data = await _client.searchStock(symbol: symbol);

      emit(data.isEmpty
          ? SearchResultsLoadingError(message: 'No results were found')
          : SearchData(data: data, listType: ListType.searchResults));
    } catch (e, stack) {
      emit(SearchResultsLoadingError(message: 'There was an error loading'));
      // await SentryHelper(exception: e,  stackTrace: stack).report();
    }
  }
}
