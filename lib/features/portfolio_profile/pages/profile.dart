import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ysec_stock_market_app/features/portfolio_profile/bloc/profile_bloc.dart';
import 'package:ysec_stock_market_app/helpers/color/color_helper.dart';
import 'package:ysec_stock_market_app/features/portfolio_profile/pages/screen.dart';
import 'package:ysec_stock_market_app/shared/widgets/empty_screen.dart';
import 'package:ysec_stock_market_app/shared/widgets/loading_indicator.dart';


class Profile extends StatelessWidget {

  final String symbol;
  
  Profile({
    required this.symbol, 
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (BuildContext context, ProfileState state) {

        if (state is ProfileLoadingError) {
          return Scaffold(
            appBar: AppBar( 
              backgroundColor: kNegativeColor,
              title: const Text(':('),
            ),
            backgroundColor: kScaffoldBackground,
            body: Center(child: EmptyScreen(message: state.error))

          );
        }

        if (state is ProfileLoaded) {
        
          return ProfileScreen(
            isSaved: state.isSymbolSaved,
            profile: state.profileModel,            
            color: determineColorBasedOnChange(state.profileModel.stockProfile.changes)
          );
        }

        return const Scaffold(
          backgroundColor: kScaffoldBackground,
          body: LoadingIndicatorWidget()
        );
      }
    );
  }
}