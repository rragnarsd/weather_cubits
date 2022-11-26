import 'package:flutter/material.dart';
import 'package:weather_cubits/presentation/theme/decoration.dart';
import 'package:weather_cubits/presentation/home_screen/widgets/weather_cards.dart';

class WeatherTabVItems extends StatelessWidget {
  const WeatherTabVItems({
    required this.temp,
    required this.wind,
    required this.cloud,
    required this.list,
    super.key,
  });

  final String temp;
  final String wind;
  final String cloud;
  final List<Widget> list;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: Decorations.kDecoration,
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CardTemp(temp: temp),
              CardWind(wind: wind),
              CardCloud(cloud: cloud)
            ],
          ),
        ),
        const SizedBox(height: 20),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: list,
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
