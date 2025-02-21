import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/Models/weather_model.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/main.dart';

import '../Screens/search_page.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key, required this.weather});

  final WeatherModel weather;
  @override
  Widget build(BuildContext context) {
    WeatherModel weatherModel =
        BlocProvider.of<GetWeatherCubit>(context).weatherModel!;
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [getThemeColor(weatherModel.condition),
              getThemeColor(weatherModel.condition)[300]!,
              getThemeColor(weatherModel.condition)[200]!,
              getThemeColor(weatherModel.condition)[50]!
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                weatherModel.cityName,
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              Text(
                "Updated at ${weatherModel.date.hour}:${weatherModel.date.minute}",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.network(weatherModel.image!.contains('https:')
                      ? weatherModel.image!
                      : "https:${weatherModel.image}"),
                  Text(
                    weatherModel.avrTemp.round().toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'Max Temp: ${weatherModel.maxTemp.round()}',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'Min Temp: ${weatherModel.minTemp.round()}',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              Text(
                weatherModel.condition,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(130, 50),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SearchPage();
                        },
                      ),
                    );
                  },
                  child: Text(
                    'Search again',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
