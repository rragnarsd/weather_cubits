import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_cubits/cubit/weather_cubit.dart';
import 'package:weather_cubits/data/repository/weather_repository.dart';
import 'package:weather_cubits/presentation/screens/home_screen/widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WeatherCubit(
        weatherRepository: WeatherRepository(),
      )..fetchWeather('Reykjavik'),
      child: const HomeBody(),
    );
  }
}
