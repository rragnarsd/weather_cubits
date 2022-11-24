import 'package:flutter/material.dart';
import 'package:weather_cubits/constants/app_colors.dart';
import 'package:weather_cubits/constants/decoration.dart';
import 'package:weather_cubits/constants/text_styles.dart';
import 'package:weather_cubits/presentation/widgets/dismiss_keyboard.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final _formKey = GlobalKey<FormState>();
  String? _cityName;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return DismissKeyboard(
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
              key: _formKey,
              autovalidateMode: autovalidateMode,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    style: TextStyles.kTextStyle12White,
                    decoration: InputDecoration(
                      focusedBorder: Decorations.kOutlinedBorderDarker,
                      border: Decorations.kOutlinedBorderLighter,
                      errorBorder: Decorations.kOutlinedBorderDarker,
                      errorStyle: TextStyles.kTextStyle12White,
                      isDense: true,
                      hintText: 'Search for your favorite city',
                      hintStyle: TextStyles.kTextStyle12White.copyWith(
                        color: AppColors.whiteColor.withOpacity(.3),
                      ),
                      suffixIcon: Icon(
                        Icons.search,
                        color: AppColors.whiteColor.withOpacity(.3),
                      ),
                    ),
                    validator: (String? value) {
                      if (value == null || value.trim().length < 3) {
                        return 'Fav city should be at least 3 letters!';
                      }
                      return null;
                    },
                    onSaved: (String? value) {
                      _cityName = value;
                    },
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    height: 45,
                    child: ElevatedButton(
                      style: Decorations.kElevatedButton,
                      onPressed: submit,
                      child: const Text(
                        'Search',
                        style: TextStyle(
                          fontSize: 18,
                          color: AppColors.whiteColor,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void submit() {
    setState(() {
      autovalidateMode = AutovalidateMode.always;
    });

    final form = _formKey.currentState;
    if (form != null && form.validate()) {
      form.save();
      Navigator.pop(context, _cityName!.trim());
    }
  }
}
