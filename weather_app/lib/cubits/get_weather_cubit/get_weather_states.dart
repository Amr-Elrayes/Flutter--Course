import 'package:weather_app/Models/weather_model.dart';

class WeatherState {}

class NoweatherState extends WeatherState {}

class WeatherLoadedState extends WeatherState {
  final WeatherModel weatherModel;

  WeatherLoadedState({required this.weatherModel});
}

class WeatherFailuerState extends WeatherState {
  final String errMessage;

  WeatherFailuerState({required this.errMessage});
}
