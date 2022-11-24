import 'package:flutter/material.dart';
import 'package:weather_cubits/constants/text_styles.dart';

class WeatherLocation extends StatefulWidget {
  const WeatherLocation({
    Key? key,
    required this.formattedDate,
    required this.currentLocation,
  }) : super(key: key);

  final String formattedDate;
  final String currentLocation;

  @override
  State<WeatherLocation> createState() => _WeatherLocationState();
}

class _WeatherLocationState extends State<WeatherLocation> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.currentLocation,
            style: TextStyles.kTextStyle25Russo,
          ),
          const SizedBox(height: 5),
          Text(
            widget.formattedDate,
            style: TextStyles.kTextStyleWhite,
          ),
        ],
      ),
    );
  }
}
