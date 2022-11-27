import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:weather_cubits/application/cubit/weather_cubit.dart';
import 'package:weather_cubits/application/utils/formatter.dart';
import 'package:weather_cubits/application/utils/weather_records.dart';
import 'package:weather_cubits/presentation/home_screen/widgets/weather_chart.dart';
import 'package:weather_cubits/presentation/home_screen/widgets/weather_list_item.dart';
import 'package:weather_cubits/presentation/home_screen/widgets/weather_location.dart';
import 'package:weather_cubits/presentation/home_screen/widgets/weather_tab_bar.dart';
import 'package:weather_cubits/presentation/home_screen/widgets/weather_tabv_items.dart';

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
                  behavior: SnackBarBehavior.floating,
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
                var currentWeather = state.weatherModel!.current;
                var tomorrowWeather = state
                    .weatherModel!.forecast!.forecastday![1].hour![currentHour];

                var chartData = ChartDataFormatter.getTempData(
                  hourlyWeather:
                      state.weatherModel!.forecast!.forecastday![0].hour!,
                  currentHour: currentHour,
                  nextHours: 12,
                );

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    WeatherLocation(
                      formattedDate: formattedDate,
                      currentLocation: state.weatherModel!.location!.region!,
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
                              WeatherTabVItems(
                                temp: currentWeather!.tempC!.toInt().toString(),
                                wind:
                                    currentWeather.windMph!.toInt().toString(),
                                cloud: currentWeather.cloud.toString(),
                                list: calculations
                                    .getTodayRecords(state
                                        .weatherModel!.forecast!.forecastday!)
                                    .map((e) => WeatherListItem(
                                        hour: e.time!.substring(11, 16),
                                        icon: 'https:${e.condition!.icon!}',
                                        degrees: e.tempC!.toInt(),
                                        feelsLike: e.feelslikeC!.toString()))
                                    .toList(),
                              ),
                              WeatherTabVItems(
                                temp: tomorrowWeather.tempC!.toInt().toString(),
                                wind:
                                    tomorrowWeather.windMph!.toInt().toString(),
                                cloud: '${tomorrowWeather.cloud}',
                                list: calculations
                                    .getTomorrowRecords(state
                                        .weatherModel!.forecast!.forecastday!)
                                    .map((e) => WeatherListItem(
                                        hour: e.time!.substring(11, 16),
                                        icon: 'https:${e.condition!.icon!}',
                                        degrees: e.tempC!.toInt(),
                                        feelsLike: e.feelslikeC!.toString()))
                                    .toList(),
                              )
                            ]),
                      ),
                    ),
                    WeatherChart(chartData: chartData)
                  ],
                );
            }
          },
        ),
      ),
    );
  }
}
