import 'package:flutter/material.dart';
import 'package:ysec_stock_market_app/helpers/color/color_helper.dart';

class EmptyScreen extends StatelessWidget {

  final String? message;

  const EmptyScreen({super.key, 
    this.message
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      message ?? '',
      style: const TextStyle(
        height: 1.5,
        fontSize: 20, 
        fontWeight: FontWeight.bold,
        color: kGray
      ),
      textAlign: TextAlign.start,
    );
  }
}