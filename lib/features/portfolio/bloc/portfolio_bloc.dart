import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:ysec_stock_market_app/shared/models/data_overview.dart';
import 'package:ysec_stock_market_app/features/portfolio_profile/models/market_index.dart';
import 'package:ysec_stock_market_app/features/search/models/watch_list_model.dart';
import 'package:ysec_stock_market_app/shared/models/storage/storage.dart';
import 'package:ysec_stock_market_app/features/portfolio/repositories/client.dart';
import 'package:ysec_stock_market_app/features/portfolio/repositories/storage_client.dart';

part 'portfolio_event.dart';
part 'portfolio_state.dart';

class PortfolioBloc extends Bloc<PortfolioEvent, PortfolioState> {
  final _databaseRepository = PortfolioStorageClient();
  final _repository = PortfolioClient();

  PortfolioBloc() : super(PortfolioInitial()) {
    on<FetchPortfolioData>(_loadContent);
    on<SaveProfile>(_saveProfile);
    on<DeleteProfile>(_deleteProfile);
  }

  Future<void> _loadContent(
      FetchPortfolioData event, Emitter<PortfolioState> emit) async {
    try {
      emit(PortfolioLoading());
      final symbolsStored = await _databaseRepository.fetch();
      final indexes = await _repository.fetchIndexes();

      if (symbolsStored.isNotEmpty) {
       
        final symbolStrings = symbolsStored.map(
          (e) => e.symbol,
        );
        
        final stocks = WatchListModel.fromJson(watchListJson).data
            ?.where(
              (element) => symbolStrings.contains(element.symbol),
            )
            .map(
              (e) => StockOverviewModel(
                  change: e.iislPtsChange ?? '',
                  name: e.symbol ?? '',
                  price: e.open ?? '',
                  symbol: e.symbol ?? '',
                  changesPercentage: e.iislPercChange ?? ''),
            )
            .toList();
        emit(PortfolioLoaded(stocks: stocks ?? [], indexes: indexes));
      } else {
        emit(PortfolioStockEmpty(indexes: indexes));
      }
    } catch (e, _) {
      emit(PortfolioError(
          message: 'There was an unkwon error. Please try again later.'));
    }
  }

  Future<void> _saveProfile(
      SaveProfile event, Emitter<PortfolioState> emit) async {
    emit(PortfolioLoading());
    await _databaseRepository.save(storageModel: event.storageModel);
    add(FetchPortfolioData());
  }

  Future<void> _deleteProfile(
      DeleteProfile event, Emitter<PortfolioState> emit) async {
    emit(PortfolioLoading());
    await _databaseRepository.delete(symbol: event.symbol);
    add(FetchPortfolioData());
  }
}
