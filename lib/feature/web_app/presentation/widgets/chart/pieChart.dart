import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../model/chart/chartSampleData.dart';

class PieChart extends StatelessWidget {
  PieChart({Key? key}) : super(key: key);
  final TooltipBehavior _tooltip =
      TooltipBehavior(enable: true, format: 'point.x : point.y%');
  @override
  Widget build(BuildContext context) {
    return _buildDefaultDoughnutChart();
  }

  /// Return the circular chart with default doughnut series.
  SfCircularChart _buildDefaultDoughnutChart() {
    return SfCircularChart(
      title: ChartTitle(text: 'Driver Contribution'),
      legend:
          Legend(isVisible: true, overflowMode: LegendItemOverflowMode.wrap),
      series: _getDefaultDoughnutSeries(),
      tooltipBehavior: _tooltip,
    );
  }

  /// Returns the doughnut series which need to be render.
  List<DoughnutSeries<ChartSampleData, String>> _getDefaultDoughnutSeries() {
    return <DoughnutSeries<ChartSampleData, String>>[
      DoughnutSeries<ChartSampleData, String>(
          radius: '80%',
          explode: true,
          explodeOffset: '10%',
          dataSource: <ChartSampleData>[
            ChartSampleData(x: 'Gunawan', y: 55, text: '55%'),
            ChartSampleData(x: 'Pradipta', y: 31, text: '31%'),
            ChartSampleData(x: 'Budi', y: 7.7, text: '7.7%'),
            ChartSampleData(x: 'Wahyu', y: 3.7, text: '3.7%'),
            ChartSampleData(x: 'Asfar', y: 1.2, text: '1.2%'),
            ChartSampleData(x: 'Randi', y: 1.4, text: '1.4%'),
          ],
          xValueMapper: (ChartSampleData data, _) => data.x as String,
          yValueMapper: (ChartSampleData data, _) => data.y,
          dataLabelMapper: (ChartSampleData data, _) => data.text,
          dataLabelSettings: const DataLabelSettings(isVisible: true))
    ];
  }
}
