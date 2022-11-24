import 'package:weather_cubits/data/models/forcast_day.dart';
import 'package:weather_cubits/data/models/hour.dart';

class WeatherRecords {
  List<Hour> getRecordsForNextThreeHours(List<Hour> hourlyRecords) {
    int currentHour = DateTime.now().hour;
    var leftHours = hourlyRecords.sublist(currentHour, hourlyRecords.length);
    int hoursRequired = 3;

    if (leftHours.length >= hoursRequired) {
      return hourlyRecords.sublist(currentHour, currentHour + hoursRequired);
    } else {
      return hourlyRecords.sublist(currentHour, currentHour + leftHours.length);
    }
  }

  List<Hour> getTodayRecords(List<Forecastday> forecastday) {
    var records = forecastday[0];
    return getRecordsForNextThreeHours(records.hour!);
  }

  List<Hour> getTomorrowRecords(List<Forecastday> forecastday) {
    var records = forecastday[1];
    return getRecordsForNextThreeHours(records.hour!);
  }
}
