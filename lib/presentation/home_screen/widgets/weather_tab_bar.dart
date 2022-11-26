import 'package:flutter/material.dart';
import 'package:weather_cubits/presentation/theme/app_colors.dart';
import 'package:weather_cubits/presentation/home_screen/widgets/circle_indicator.dart';

class WeatherTabBar extends StatelessWidget {
  const WeatherTabBar({
    Key? key,
    required TabController controller,
  })  : _controller = controller,
        super(key: key);

  final TabController _controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Align(
        alignment: Alignment.centerLeft,
        child: TabBar(
          controller: _controller,
          labelPadding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          isScrollable: true,
          unselectedLabelColor: AppColors.greyColor,
          indicator: const CircleIndicator(
            color: AppColors.whiteColor,
            radius: 3,
          ),
          tabs: const [
            Tab(text: 'Today'),
            Tab(text: 'Tomorrow'),
          ],
        ),
      ),
    );
  }
}
