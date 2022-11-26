import 'package:fl_chart/fl_chart.dart';
import 'package:weather_cubits/domain/hour_model.dart';

class ChartDataFormatter {
  static ChartData getTempData({
    required List<HourModel> hourlyWeather,
    required int currentHour,
    required int nextHours,
  }) {
    List<HourModel> recordsForNext12Hours = [];

    int leftHours = hourlyWeather.length - currentHour;
    if (leftHours >= 12) {
      recordsForNext12Hours =
          hourlyWeather.sublist(currentHour, currentHour + 12);
    } else {
      recordsForNext12Hours =
          hourlyWeather.sublist(currentHour, currentHour + leftHours);
    }

    List<String> xAxis = [];
    List<FlSpot> chartData = [];

    for (var i = 0; i < recordsForNext12Hours.length; i++) {
      var item = recordsForNext12Hours[i];
      var hour = DateTime.parse(item.time!).hour;

      xAxis.add(hour.toString());
      chartData.add(FlSpot(i.toDouble(), item.tempC!));
    }

    return ChartData(xAxis: xAxis, chartData: chartData);
  }
}

class ChartData {
  ChartData({
    required this.xAxis,
    required this.chartData,
  });

  List<String> xAxis;
  List<FlSpot> chartData;
}
