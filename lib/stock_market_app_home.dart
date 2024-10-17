import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ysec_stock_market_app/helpers/color/color_helper.dart';
import 'package:ysec_stock_market_app/features/news/pages/news_section_page.dart';
import 'package:ysec_stock_market_app/features/portfolio/pages/portfolio_secction_page.dart';
import 'package:ysec_stock_market_app/features/search/pages/search_section_page.dart';

class StockMarketAppHome extends StatefulWidget {
  const StockMarketAppHome({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _StockMarketAppHomeState createState() => _StockMarketAppHomeState();
}

class _StockMarketAppHomeState extends State<StockMarketAppHome> {

  int _selectedIndex = 0;

  final List<Widget> tabs = [
    const PortfolioSectionPage(),
    Container(),
     const SearchSectionPage(),
    const NewsSectionPage(),
   
   
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffoldBackground,
      body: tabs.elementAt(_selectedIndex),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8),
          child: GNav(
            gap: 8,
            activeColor: Colors.white,
            iconSize: 24,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            duration: const Duration(milliseconds: 800),
            tabBackgroundColor: Colors.white30,
            selectedIndex: _selectedIndex,
            tabs: _bottomNavigationBarItemItems(),
            onTabChange: _onItemTapped
          ),
        ),
      )
    );
  }

  List<GButton> _bottomNavigationBarItemItems() {
    return [
      const GButton(
        icon: FontAwesomeIcons.shapes,
        text: 'Home',
      ),
      const GButton(
        icon: FontAwesomeIcons.suitcase,
        text: 'Markets',
      ),
      const GButton(
        icon: FontAwesomeIcons.magnifyingGlass,
        text: 'Search',
      ),
      const GButton(
        icon: FontAwesomeIcons.earthAmericas,
        text: 'News',
      ),
    ];
  }

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
  }
}