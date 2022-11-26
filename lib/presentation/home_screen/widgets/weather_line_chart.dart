import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:weather_cubits/presentation/theme/app_colors.dart';
import 'package:weather_cubits/presentation/theme/text_styles.dart';

class LineChartWidget extends StatelessWidget {
  final List<String> xAxis;
  final List<FlSpot> chartData;

  const LineChartWidget(
      {Key? key, required this.xAxis, required this.chartData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double max = chartData
        .map((e) => e.y)
        .toList()
        .reduce((curr, next) => curr > next ? curr : next);

    double min = chartData
        .map((e) => e.y)
        .toList()
        .reduce((curr, next) => curr < next ? curr : next);

    return Container(
      height: size.height > 700
          ? size.height * .25
          : size.height * .15,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: LineChart(
        LineChartData(
            minX: 0,
            maxX: xAxis.length.toDouble() - 1,
            minY: min,
            maxY: max,
            titlesData: FlTitlesData(
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                    interval: 1,
                    showTitles: true,
                    getTitlesWidget: (value, meta) {
                      String text = '';

                      if (value.toInt() < xAxis.length) {
                        text = xAxis[value.toInt()];
                      }
                      return Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          text,
                          style: TextStyles.kTextStyle12White.copyWith(
                            color: AppColors.whiteColor.withOpacity(.3),
                          ),
                        ),
                      );
                    }),
              ),
              leftTitles: AxisTitles(
                axisNameSize: 5,
                drawBehindEverything: true,
                axisNameWidget: const SizedBox.shrink(),
                sideTitles: SideTitles(showTitles: false),
              ),
              topTitles: AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
              rightTitles:
                  AxisTitles(sideTitles: SideTitles(showTitles: false)),
            ),
            backgroundColor: AppColors.blackColor.withOpacity(.3),
            borderData: FlBorderData(
              show: false,
            ),
            gridData: FlGridData(
                show: false,
                getDrawingHorizontalLine: (value) {
                  return FlLine(
                    color: AppColors.primaryColor,
                    strokeWidth: 1,
                  );
                }),
            lineTouchData: LineTouchData(
              getTouchedSpotIndicator: (barData, spotIndexes) {
                return spotIndexes.map((e) {
                  return TouchedSpotIndicatorData(
                    FlLine(
                      color: AppColors.whiteColor.withOpacity(.1),
                      strokeWidth: 2,
                      dashArray: [3, 3],
                    ),
                    FlDotData(
                      show: false,
                      getDotPainter: (spot, percent, barData, index) =>
                          FlDotCirclePainter(
                        radius: 8,
                        color: AppColors.blackColor,
                        strokeWidth: 2,
                        strokeColor: AppColors.blackColor,
                      ),
                    ),
                  );
                }).toList();
              },
              touchTooltipData: LineTouchTooltipData(
                tooltipBgColor: AppColors.blueColor.withOpacity(.7),
                tooltipPadding: const EdgeInsets.all(8),
                fitInsideHorizontally: true,
                getTooltipItems: (touchedSpots) {
                  return touchedSpots.map((e) {
                    return LineTooltipItem(
                      chartData[e.spotIndex].y.toString(),
                      TextStyles.kTextStyle12White,
                    );
                  }).toList();
                },
              ),
              handleBuiltInTouches: true,
            ),
            lineBarsData: [
              LineChartBarData(
                preventCurveOverShooting: true,
                isCurved: true,
                spots: chartData,
                color: AppColors.whiteColor.withOpacity(.3),
              )
            ]),
        swapAnimationDuration: const Duration(milliseconds: 150),
        swapAnimationCurve: Curves.linear,
      ),
    );
  }
}
