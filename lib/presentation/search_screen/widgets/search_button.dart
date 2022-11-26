import 'package:flutter/material.dart';
import 'package:weather_cubits/presentation/theme/decoration.dart';
import 'package:weather_cubits/presentation/theme/text_styles.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({
    Key? key,
    required this.submit,
  }) : super(key: key);

  final Function()? submit;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
        style: Decorations.kElevatedButton,
        onPressed: submit,
        child: const Text(
          'Search',
          style: TextStyles.kTextStyle18White,
        ),
      ),
    );
  }
}
