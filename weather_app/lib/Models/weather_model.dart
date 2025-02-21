class WeatherModel {
  final String cityName;
  final DateTime date;
  final String? image;
  final double avrTemp;
  final double minTemp;
  final double maxTemp;
  final String condition;

  WeatherModel(
      {required this.cityName,
      required this.date,
      this.image,
      required this.avrTemp,
      required this.minTemp,
      required this.maxTemp,
      required this.condition});

  factory WeatherModel.fromJson(json) {
    return WeatherModel(
      image: json['forecast']['forecastday'][0]['day']['condition']['icon'],
      cityName: json['location']['name'],
      date: DateTime.parse(json['current']['last_updated']),
      avrTemp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
      minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      condition: json['forecast']['forecastday'][0]['day']['condition']['text'],
    );
  }
}
