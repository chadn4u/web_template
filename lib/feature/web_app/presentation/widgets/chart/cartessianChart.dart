import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../model/chart/chartSampleData.dart';

class CartessianChart extends StatelessWidget {
  CartessianChart({Key? key}) : super(key: key);
  final TooltipBehavior _tooltip =
      TooltipBehavior(enable: true, header: '', canShowMarker: false);
  @override
  Widget build(BuildContext context) {
    return _buildDefaultLogarithmicAxisChart();
  }

  /// Returns the line chart with default logarithmic axis.
  SfCartesianChart _buildDefaultLogarithmicAxisChart() {
    return SfCartesianChart(
      plotAreaBorderWidth: 1,
      title: ChartTitle(text: 'Monthly Sales'),
      primaryXAxis: DateTimeAxis(),

      /// Y axis as logarithmic axis placed here.
      primaryYAxis: LogarithmicAxis(
          minorTicksPerInterval: 5,
          majorGridLines: const MajorGridLines(width: 1.5),
          minorTickLines: const MinorTickLines(size: 4),
          labelFormat: r'${value}',
          interval: 1),
      series: _getSeries(),
      tooltipBehavior: _tooltip,
    );
  }

  // Returns the list of chart series which need to render on the line chart.
  List<LineSeries<ChartSampleData, DateTime>> _getSeries() {
    return <LineSeries<ChartSampleData, DateTime>>[
      LineSeries<ChartSampleData, DateTime>(
          dataSource: <ChartSampleData>[
            ChartSampleData(x: DateTime(2022, 1), yValue: 200),
            ChartSampleData(x: DateTime(2022, 2), yValue: 400),
            ChartSampleData(x: DateTime(2022, 3), yValue: 600),
            ChartSampleData(x: DateTime(2022, 4), yValue: 700),
            ChartSampleData(x: DateTime(2022, 5), yValue: 1400),
            ChartSampleData(x: DateTime(2022, 6), yValue: 2000),
            ChartSampleData(x: DateTime(2022, 7), yValue: 4000),
            ChartSampleData(x: DateTime(2022, 8), yValue: 6000),
            ChartSampleData(x: DateTime(2022, 9), yValue: 8000),
            ChartSampleData(x: DateTime(2022, 10), yValue: 11000)
          ],
          xValueMapper: (ChartSampleData sales, _) => sales.x as DateTime,
          yValueMapper: (ChartSampleData sales, _) => sales.yValue,
          markerSettings: const MarkerSettings(isVisible: true))
    ];
  }
}
