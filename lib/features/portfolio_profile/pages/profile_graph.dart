import 'package:flutter/material.dart';
// import 'package:charts_flutter/flutter.dart' as charts
import 'package:ysec_stock_market_app/features/portfolio_profile/models/stock_chart.dart';

class SimpleTimeSeriesChart extends StatelessWidget {
  final List<StockChart> chart;

  final Color color;

  const SimpleTimeSeriesChart({super.key, 
    required this.chart,
    required this.color
  });

  @override
  Widget build(BuildContext context) {

    return Container();
    // charts.TimeSeriesChart(
    //   [
    //     charts.Series<RowData, DateTime>(
    //       id: 'Cost',
    //       colorFn: (_, __) => charts.ColorUtil.fromDartColor(color),
    //       domainFn: (RowData row, _) => row.timeStamp,
    //       measureFn: (RowData row, _) => row.cost,
    //       data: chart
    //         .map((item) => RowData(timeStamp: DateTime.parse(item.date), cost: item.close))
    //         .toList(),
    //     ),
    //   ],

    //   animate: false,
          
    //   primaryMeasureAxis: const charts.NumericAxisSpec(
    //     tickProviderSpec: charts.BasicNumericTickProviderSpec(desiredTickCount: 1),
    //     renderSpec: charts.NoneRenderSpec()
    //   ),
      
    // );
  }
}

/// Sample time series data type.
class RowData {
  final DateTime timeStamp;
  final double cost;
  RowData({required this.timeStamp, required this.cost});
}
