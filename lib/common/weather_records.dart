import 'package:weather_cubits/data/models/forcast_day_model.dart';
import 'package:weather_cubits/data/models/hour_model.dart';

class WeatherRecords {
  List<HourModel> getRecordsForNextThreeHours(List<HourModel> hourlyRecords) {
    int currentHour = DateTime.now().hour;
    var leftHours = hourlyRecords.sublist(currentHour, hourlyRecords.length);
    int hoursRequired = 3;

    if (leftHours.length >= hoursRequired) {
      return hourlyRecords.sublist(currentHour, currentHour + hoursRequired);
    } else {
      return hourlyRecords.sublist(currentHour, currentHour + leftHours.length);
    }
  }

  List<HourModel> getTodayRecords(List<ForecastdayModel> forecastday) {
    var records = forecastday[0];
    return getRecordsForNextThreeHours(records.hour!);
  }

  List<HourModel> getTomorrowRecords(List<ForecastdayModel> forecastday) {
    var records = forecastday[1];
    return getRecordsForNextThreeHours(records.hour!);
  }
}
