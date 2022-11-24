import 'package:flutter/material.dart';
import 'package:weather_cubits/constants/decoration.dart';
import 'package:weather_cubits/constants/text_styles.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({
    Key? key,
    required this.function,
  }) : super(key: key);

  final Function()? function;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
        style: Decorations.kElevatedButton,
        onPressed: function,
        // onPressed: submit,
        child: const Text(
          'Search',
          style: TextStyles.kTextStyle18White,
        ),
      ),
    );
  }
}
