import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:weather_cubits/domain/weather_model.dart';
import 'package:weather_cubits/infrastructure/weather_repository.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit({required this.weatherRepository}) : super(const WeatherState());

  final WeatherRepository weatherRepository;

  Future fetchWeather(String cityName) async {
    emit(state.copyWith(status: WeatherStatus.loading));
    try {
      final weatherData =
          await weatherRepository.getCurrentForcast(currentLocation: cityName);

      emit(
        state.copyWith(
          status: WeatherStatus.success,
          weatherModel: weatherData,
        ),
      );
    } on Exception catch (exception) {
      emit(
        state.copyWith(
          status: WeatherStatus.failure,
          exception: exception,
        ),
      );
    }
  }
}
