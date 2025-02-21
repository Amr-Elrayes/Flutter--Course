import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/Models/weather_model.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';

import '../../Services/weather_service.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit() : super(NoweatherState());
  WeatherModel? weatherModel;
  getWeather({required String cityName}) async {
    {
      try {
        weatherModel =
            await WeatherService(Dio()).getWeathemodel(cityName: cityName);
        emit(WeatherLoadedState(weatherModel: weatherModel!));
      } catch (e) {
        emit(WeatherFailuerState(errMessage: e.toString()));
      }
    }
  }
}
