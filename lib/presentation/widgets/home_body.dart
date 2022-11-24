import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:weather_cubits/common/formatter.dart';
import 'package:weather_cubits/common/weather_records.dart';
import 'package:weather_cubits/constants/decoration.dart';
import 'package:weather_cubits/constants/text_styles.dart';
import 'package:weather_cubits/cubit/weather_cubit.dart';
import 'package:weather_cubits/presentation/widgets/weather_cards.dart';
import 'package:weather_cubits/presentation/widgets/weather_chart.dart';
import 'package:weather_cubits/presentation/widgets/weather_list_item.dart';
import 'package:weather_cubits/presentation/widgets/weather_location.dart';
import 'package:weather_cubits/presentation/widgets/weather_tab_bar.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody>
    with SingleTickerProviderStateMixin {
  String formattedDate = DateFormat.MMMEd().format(DateTime.now());

  late TabController _controller;

  int currentHour = DateTime.now().hour;

  final WeatherRecords calculations = WeatherRecords();

  @override
  void initState() {
    _controller = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<WeatherCubit, WeatherState>(
          listener: (context, state) {
            if (state.status == WeatherStatus.failure) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('City name not found!'),
                ),
              );
            }
          },
          builder: (context, state) {
            switch (state.status) {
              case WeatherStatus.loading:
                return const Center(
                  child: CircularProgressIndicator(),
                );
              case WeatherStatus.failure:
              case WeatherStatus.initial:
              case WeatherStatus.success:
                var currentWeather = state.weatherAPI!.current;
                var tomorrowWeather = state
                    .weatherAPI!.forecast!.forecastday![1].hour![currentHour];

                var chartData = ChartDataFormatter.getTempData(
                    hourlyWeather:
                        state.weatherAPI!.forecast!.forecastday![0].hour!,
                    currentHour: currentHour,
                    nextHours: 12);

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    WeatherLocation(
                      formattedDate: formattedDate,
                      currentLocation: state.weatherAPI!.location!.region!,
                    ),
                    WeatherTabBar(controller: _controller),
                    const SizedBox(height: 20),
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: TabBarView(
                            physics: const NeverScrollableScrollPhysics(),
                            controller: _controller,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    decoration: Decorations.kDecoration,
                                    padding: const EdgeInsets.all(16),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        CardTemp(
                                            temp: currentWeather!.tempC!
                                                .toInt()
                                                .toString()),
                                        CardWind(
                                            wind: currentWeather.windMph!
                                                .toInt()
                                                .toString()),
                                        CardCloud(
                                            cloud:
                                                currentWeather.cloud.toString())
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: calculations
                                          .getTodayRecords(state.weatherAPI!
                                              .forecast!.forecastday!)
                                          .map((e) => WeatherListItem(
                                              hour: e.time!.substring(11, 16),
                                              icon:
                                                  'https:${e.condition!.icon!}',
                                              degrees: e.tempC!.toString()))
                                          .toList(),
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    decoration: Decorations.kDecoration,
                                    padding: const EdgeInsets.all(16),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        CardTemp(
                                            temp: tomorrowWeather.tempC
                                                .toString()),
                                        CardWind(
                                            wind: tomorrowWeather.windMph!
                                                .toInt()
                                                .toString()),
                                        CardCloud(
                                            cloud: '${tomorrowWeather.cloud}')
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: calculations
                                          .getTomorrowRecords(state.weatherAPI!
                                              .forecast!.forecastday!)
                                          .map((e) => WeatherListItem(
                                              hour: e.time!.substring(11, 16),
                                              icon:
                                                  'https:${e.condition!.icon!}',
                                              degrees: e.tempC!.toString()))
                                          .toList(),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                ],
                              ),
                            ]),
                      ),
                    ),
                    Column(
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
                    )
                  ],
                );
            }
          },
        ),
      ),
    );
  }
}
