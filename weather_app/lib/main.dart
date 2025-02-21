import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/Screens/home_page.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: Builder(
        builder: (context) => BlocBuilder<GetWeatherCubit, WeatherState>(
          builder: (context, state) {
            return MaterialApp(
              theme: ThemeData(
                useMaterial3: false,
                elevatedButtonTheme: ElevatedButtonThemeData(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          100), // Keep M3-style rounded corners
                    ),
                  ),
                ),
                primarySwatch: getThemeColor(
                    BlocProvider.of<GetWeatherCubit>(context)
                        .weatherModel
                        ?.condition),
              ),
              debugShowCheckedModeBanner: false,
              home: HomePage(),
            );
          },
        ),
      ),
    );
  }
}

MaterialColor getThemeColor(String? condition) {
  if (condition == null) {
    return Colors.deepOrange;
  }
  switch (condition.toLowerCase()) {
    case 'sunny':
      return Colors.orange;
    case 'clear':
      return Colors.blueGrey;
    case 'partly cloudy':
      return Colors.lightBlue;
    case 'cloudy':
      return Colors.cyan;
    case 'overcast':
      return Colors.grey;
    case 'mist':
    case 'fog':
      return Colors.blueGrey;
    case 'patchy rain possible':
    case 'light rain':
    case 'patchy light rain':
      return Colors.lightBlue;
    case 'moderate rain':
    case 'moderate rain at times':
    case 'heavy rain':
      return Colors.blue;
    case 'thundery outbreaks possible':
    case 'moderate or heavy rain with thunder':
      return Colors.deepPurple;
    case 'patchy snow possible':
    case 'light snow':
    case 'patchy light snow':
      return Colors.indigo;
    case 'moderate snow':
    case 'heavy snow':
      return Colors.blueGrey;
    case 'freezing drizzle':
    case 'moderate or heavy freezing rain':
      return Colors.teal;
    case 'blizzard':
    case 'torrential rain shower':
    case 'light sleet':
    case 'moderate or heavy sleet':
      return Colors.teal;
    case 'ice pellets':
      return Colors.lightBlue;
    default:
      return Colors.brown; // Default color if no match is found
  }
}
