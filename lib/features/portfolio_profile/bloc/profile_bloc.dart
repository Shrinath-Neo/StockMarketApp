import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:ysec_stock_market_app/features/portfolio_profile/models/profile.dart';
import 'package:ysec_stock_market_app/features/portfolio/repositories/storage_client.dart';
import 'package:ysec_stock_market_app/features/portfolio_profile/repositories/client.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileClient _httpClient = ProfileClient();
  final PortfolioStorageClient _storageClient = PortfolioStorageClient();

  ProfileBloc() : super(ProfileInitial()) {
    on<FetchProfileData>(_onFetchProfileData);
  }

  // Event handler for fetching profile data
  Future<void> _onFetchProfileData(
      FetchProfileData event, Emitter<ProfileState> emit) async {
    emit(ProfileLoading());
    await _mapProfileState(symbol: event.symbol, emit: emit);
  }

  // Fetch profile data and manage states
  Future<void> _mapProfileState(
      {required String symbol, required Emitter<ProfileState> emit}) async {
    try {
      final profileModel = await _httpClient.fetchStockData(symbol: symbol);
      final isSymbolSaved = await _storageClient.symbolExists(symbol: symbol);

      emit(ProfileLoaded(
        profileModel: profileModel,
        isSymbolSaved: isSymbolSaved,
      ));
    } catch (e, stack) {
      emit(ProfileLoadingError(error: 'Symbol not supported.'));
    }
  }
}
