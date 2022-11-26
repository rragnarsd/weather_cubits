import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_cubits/application/cubit/weather_cubit.dart';
import 'package:weather_cubits/presentation/theme/text_styles.dart';
import 'package:weather_cubits/presentation/search_screen/search_screen.dart';

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
  String? _cityName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
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
          IconButton(
            onPressed: searchCity,
            icon: const Icon(Icons.near_me),
          ),
        ],
      ),
    );
  }

  void searchCity() async {
    _cityName = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const SearchScreen(),
      ),
    );
    if (_cityName != null) {
      if (!mounted) return;
      context.read<WeatherCubit>().fetchWeather(_cityName!);
    }
  }
}
