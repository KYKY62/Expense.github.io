import 'package:expense_tracker/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class GraphicFrequency extends StatelessWidget {
  GraphicFrequency({Key? key}) : super(key: key);
  final List<SalesData> chartData = [
    SalesData(DateTime(2010), 15),
    SalesData(DateTime(2011), 25),
    SalesData(DateTime(2012), 10),
    SalesData(DateTime(2013), 38),
    SalesData(DateTime(2014), 29),
    SalesData(DateTime(2015), 50),
    SalesData(DateTime(2016), 29),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: 200,
        width: chartData.length * 100,
        child: SfCartesianChart(
          primaryXAxis: DateTimeAxis(),
          series: <ChartSeries>[
            // Renders line chart
            SplineSeries<SalesData, DateTime>(
                color: appPrimary,
                width: 5,
                dataSource: chartData,
                xValueMapper: (SalesData sales, _) => sales.year,
                yValueMapper: (SalesData sales, _) => sales.sales)
          ],
        ),
      ),
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final DateTime year;
  final double sales;
}
