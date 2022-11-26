import 'package:flutter/material.dart';
import 'package:weather_cubits/presentation/theme/decoration.dart';
import 'package:weather_cubits/presentation/theme/text_styles.dart';
import 'package:weather_cubits/presentation/search_screen/widgets/dismiss_keyboard.dart';
import 'package:weather_cubits/presentation/search_screen/widgets/search_button.dart';

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
                    decoration: Decorations.kSearchInputDecoration,
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
                  SearchButton(submit: submit)
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
