import 'dart:convert';

import 'package:forecast_app/model/forecast_data.dart';
import 'package:forecast_app/model/forecast_data_current.dart';
import 'package:forecast_app/model/forecast_data_daily.dart';
import 'package:forecast_app/model/forecast_data_hourly.dart';
import 'package:forecast_app/utils/api_url.dart';
import 'package:http/http.dart' as http;

class FetchWeatherAPI {
  WeatherData? weatherData;

  Future<WeatherData> processData(lat, lon) async {
    var response = await http.get(Uri.parse(apiURL(lat, lon)));
    var jsonString = jsonDecode(response.body);
    weatherData = WeatherData(
        WeatherDataCurrent.fromJson(jsonString),
        WeatherDataHourly.fromJson(jsonString),
        WeatherDataDaily.fromJson(jsonString));

    return weatherData!;
  }
}
