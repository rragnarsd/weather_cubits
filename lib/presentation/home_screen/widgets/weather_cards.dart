import 'package:flutter/material.dart';
import 'package:weather_cubits/presentation/home_screen/widgets/weather_card_item.dart';

class CardCloud extends StatelessWidget {
  const CardCloud({
    Key? key,
    required this.cloud,
  }) : super(key: key);

  final String cloud;

  @override
  Widget build(BuildContext context) {
    return WeatherCardItem(
      mainText: '$cloud%',
      subText: 'Cloud',
      weatherIcon: 'assets/cloud.png',
    );
  }
}

class CardWind extends StatelessWidget {
  const CardWind({
    Key? key,
    required this.wind,
  }) : super(key: key);

  final String wind;

  @override
  Widget build(BuildContext context) {
    return WeatherCardItem(
      mainText: '$wind m/s',
      subText: 'Wind',
      weatherIcon: 'assets/wind.png',
    );
  }
}

class CardTemp extends StatelessWidget {
  const CardTemp({
    Key? key,
    required this.temp,
  }) : super(key: key);

  final String temp;

  @override
  Widget build(BuildContext context) {
    return WeatherCardItem(
      mainText: '$temp°',
      subText: 'Temp',
      weatherIcon: 'assets/temp.png',
    );
  }
}
