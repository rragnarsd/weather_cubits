import 'package:flutter/material.dart';
import 'package:weather_cubits/presentation/theme/text_styles.dart';


class WeatherCardItem extends StatelessWidget {
  const WeatherCardItem(
      {required this.mainText,
      required this.subText,
      required this.weatherIcon,
      super.key});

  final String mainText;
  final String subText;
  final String weatherIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          weatherIcon,
          height: 60,
        ),
        const SizedBox(height: 8),
        Text(
          mainText,
          style: TextStyles.kTextStyleBoldWhite,
        ),
        const SizedBox(height: 4),
        Text(
          subText,
          style: TextStyles.kTextStyle12White,
        )
      ],
    );
  }
}
