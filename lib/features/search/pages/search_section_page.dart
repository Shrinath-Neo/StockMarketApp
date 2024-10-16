
import 'package:flutter/material.dart';
import 'package:ysec_stock_market_app/features/search/pages/search_section_screen.dart';
import 'package:ysec_stock_market_app/features/search/widgets/seach_box.dart';
import 'package:ysec_stock_market_app/shared/widgets/base_list.dart';
import 'package:ysec_stock_market_app/shared/widgets/header.dart';


class SearchSectionPage extends StatelessWidget {
  const SearchSectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseList(
      children: [
        StandardHeader(
          title: 'Search',
          subtitle: 'Search Companies',
          action: Container(),
        ),

        // Search Box.
        const SizedBox(height: 16),
        const SearchBoxWidget(),
        const SizedBox(height: 16),
        const SearchSectionScreen()
      ]
    );
  }
}