import 'package:flutter/material.dart';
import 'package:weather_cubits/presentation/theme/decoration.dart';
import 'package:weather_cubits/presentation/theme/text_styles.dart';

class WeatherListItem extends StatelessWidget {
  const WeatherListItem({
    required this.hour,
    required this.icon,
    required this.degrees,
    required this.feelsLike,
    super.key,
  });

  final String hour;
  final String icon;
  final int degrees;
  final String feelsLike;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: Decorations.kDecoration,
      padding: const EdgeInsets.all(16),
      width: size.width / 3.5,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(hour, style: TextStyles.kTextStyleWhite),
            const SizedBox(height: 10),
            Image.network(icon),
            const SizedBox(height: 10),
            Text('$degrees°', style: TextStyles.kTextStyleBoldWhite),
            size.height > 900
                ? Column(
                    children: [
                      const SizedBox(height: 10),
                      Text(
                        'Feels like \n $feelsLike°',
                        style:
                            TextStyles.kTextStyleWhite.copyWith(fontSize: 12),
                        textAlign: TextAlign.center,
                      )
                    ],
                  )
                : const SizedBox.shrink()
          ]),
    );
  }
}
