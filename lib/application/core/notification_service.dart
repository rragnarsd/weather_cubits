import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_native_timezone/flutter_native_timezone.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;
import 'package:weather_cubits/presentation/theme/app_colors.dart';

class NotificationService {
  NotificationService();

  final _notificationService = FlutterLocalNotificationsPlugin();

  Future<void> initalize() async {
    tz.initializeTimeZones();
    final String currentTimeZone =
        await FlutterNativeTimezone.getLocalTimezone();
    tz.setLocalLocation(tz.getLocation(currentTimeZone));

    const AndroidInitializationSettings androidInitializationSettings =
        AndroidInitializationSettings('drawable/launch_image');

    const InitializationSettings settings =
        InitializationSettings(android: androidInitializationSettings);

    await _notificationService.initialize(settings);
  }

  Future<NotificationDetails> _notificationDetails() async {
    AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails(
      color: AppColors.blackColor.withOpacity(.3),
      'channelId',
      'channelName',
      channelDescription: 'description',
      importance: Importance.max,
      priority: Priority.max,
      playSound: true,
    );

    return NotificationDetails(
      android: androidNotificationDetails,
    );
  }

  Future<void> showSceduledNotification({
    required int id,
    required String title,
    required String body,
    required DateTime sceduledDate,
  }) async {
    final details = await _notificationDetails();
    await _notificationService.zonedSchedule(
      id,
      title,
      body,
      //Specifies when a notification should be displayed
      _scheduleIfRaining(const Time(17)),
      details,
      androidAllowWhileIdle: true,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
      matchDateTimeComponents: DateTimeComponents.time,
    );
  }

  static tz.TZDateTime _scheduleIfRaining(Time time) {
    final now = tz.TZDateTime.now(tz.local);
    final scheduledDate = tz.TZDateTime(tz.local, now.year, now.month, now.day,
        time.hour, time.minute, time.second);

    return scheduledDate.isBefore(now)
        ? scheduledDate.add(const Duration(days: 1))
        : scheduledDate;
  }
}
