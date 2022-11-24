part of 'weather_cubit.dart';

enum WeatherStatus { initial, loading, success, failure }

class WeatherState extends Equatable {
  final WeatherStatus status;
  final WeatherAPI? weatherAPI;
  final Exception? exception;

  const WeatherState({
    this.status = WeatherStatus.initial,
    this.weatherAPI,
    this.exception,
  });

  @override
  List<Object?> get props => [status, weatherAPI, exception];

  WeatherState copyWith({
    WeatherStatus? status,
    WeatherAPI? weatherAPI,
    Exception? exception,
  }) {
    return WeatherState(
      status: status ?? this.status,
      weatherAPI: weatherAPI ?? this.weatherAPI,
      exception: exception ?? this.exception,
    );
  }
}
