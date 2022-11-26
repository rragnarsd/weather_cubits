part of 'weather_cubit.dart';

enum WeatherStatus { initial, loading, success, failure }

class WeatherState extends Equatable {
  final WeatherStatus status;
  final WeatherModel? weatherModel;
  final Exception? exception;

  const WeatherState({
    this.status = WeatherStatus.initial,
    this.weatherModel,
    this.exception,
  });

  @override
  List<Object?> get props => [status, weatherModel, exception];

  WeatherState copyWith({
    WeatherStatus? status,
    WeatherModel? weatherModel,
    Exception? exception,
  }) {
    return WeatherState(
      status: status ?? this.status,
      weatherModel: weatherModel ?? this.weatherModel,
      exception: exception ?? this.exception,
    );
  }
}
