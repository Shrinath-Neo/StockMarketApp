import 'package:flutter/material.dart';
import 'package:ysec_stock_market_app/features/portfolio_profile/pages/profile_new.dart';
import 'package:ysec_stock_market_app/features/portfolio_profile/models/profile.dart';
import 'package:ysec_stock_market_app/helpers/color/color_helper.dart';
import 'package:ysec_stock_market_app/shared/models/storage/storage.dart';
import 'package:ysec_stock_market_app/features/news/widgets/save_button.dart';

class ProfileScreen extends StatelessWidget {

  final bool isSaved;
  final Color color;
  final ProfileModel profile;

  const ProfileScreen({super.key, 
    required this.isSaved,
    required this.profile,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: color,
        centerTitle: true,
        title: Text(profile.stockQuote.symbol),
        

        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop(), 
        ),

        actions: <Widget>[
          WatchlistButtonWidget(
            storageModel: StorageModel(
              symbol: profile.stockQuote.symbol, 
              companyName: profile.stockQuote.name
            ),
            isSaved: isSaved,
            color: Colors.white,
          )
        ],
      ),
      
      backgroundColor: kScaffoldBackground,
      body: SafeArea(
        child: Profile(
          color: color,
          stockProfile: profile.stockProfile,
          stockQuote: profile.stockQuote, stockChart: [],
        ),
      )
    );
  }
}