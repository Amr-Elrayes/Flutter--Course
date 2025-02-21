import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/Widgets/Noweather_body.dart';
import 'package:weather_app/Widgets/faileur_page.dart';
import 'package:weather_app/Widgets/weather_info_body.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          'Weather App',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
      ),
      body:
          BlocBuilder<GetWeatherCubit, WeatherState>(builder: (context, state) {
        if (state is NoweatherState) {
          return NoweatherBody();
        } else if (state is WeatherLoadedState) {
          return WeatherInfoBody(
            weather: state.weatherModel,
          );
        } else {
          return FaileurPage();
        }
      }),
    );
  }
}
