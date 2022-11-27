import 'package:flutter/material.dart';
import 'package:weather_cubits/application/utils/formatter.dart';
import 'package:weather_cubits/presentation/theme/text_styles.dart';
import 'package:weather_cubits/presentation/home_screen/widgets/weather_line_chart.dart';

class WeatherChart extends StatelessWidget {
  const WeatherChart({
    Key? key,
    required this.chartData,
  }) : super(key: key);

  final ChartData chartData;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Next 12 hours temp',
            style: TextStyles.kTextStyleWhite,
          ),
        ),
        const SizedBox(height: 10),
        LineChartWidget(
          xAxis: chartData.xAxis,
          chartData: chartData.chartData,
        ),
      ],
    );
  }
}
