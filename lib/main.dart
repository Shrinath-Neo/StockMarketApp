import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ysec_stock_market_app/features/connection_bloc/bloc/connectivity_bloc.dart';
import 'package:ysec_stock_market_app/features/news/bloc/news_bloc.dart';
import 'package:ysec_stock_market_app/features/portfolio_profile/bloc/profile_bloc.dart';
import 'package:ysec_stock_market_app/features/search/bloc/search_bloc.dart';
import 'package:ysec_stock_market_app/stock_market_app_home.dart';
import 'features/portfolio/bloc/portfolio_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ConnectivityBloc>(
          create: (context) => ConnectivityBloc(),
        ),
        BlocProvider<PortfolioBloc>(
          create: (context) => PortfolioBloc(),
        ),
        BlocProvider<ProfileBloc>(
          create: (context) => ProfileBloc(),
        ),
        BlocProvider<SearchBloc>(
          create: (context) => SearchBloc(),
        ),
        BlocProvider<NewsBloc>(
          create: (context) => NewsBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.deepPurple, brightness: Brightness.dark),
          useMaterial3: true,
        ),
        home: BlocListener<ConnectivityBloc, ConnectivityState>(
          listener: (context, state) {
             if (state is Disconnected) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.message)),
          );
        } else if (state is Connected) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.message),),
          );
        }
          },
          child: const StockMarketAppHome(),
        ),
      ),
    );
  }
}
