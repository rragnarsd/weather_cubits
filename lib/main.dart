import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_cubits/presentation/theme/app_colors.dart';
import 'package:weather_cubits/application/core/notification_service.dart';
import 'package:weather_cubits/presentation/home_screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final NotificationService service;

  @override
  void initState() {
    super.initState();
    service = NotificationService();
    service.initalize();

    service.showSceduledNotification(
      id: 0,
      title: 'It\'s gonna rain today',
      body: 'Bring your rain jacket with you!',
      sceduledDate: DateTime.now().add(
        const Duration(seconds: 10),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather API',
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      theme: ThemeData(
        primaryColor: AppColors.blueColor,
        brightness: Brightness.dark,
        textTheme: GoogleFonts.chakraPetchTextTheme(),
      ),
      home: const HomeScreen(),
    );
  }
}
