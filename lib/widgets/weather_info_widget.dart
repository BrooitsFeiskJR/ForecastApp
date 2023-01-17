import 'package:flutter/material.dart';
import 'package:forecast_app/model/forecast_data_current.dart';

class InfoWeatherContainer extends StatelessWidget {
  final WeatherDataCurrent weatherDataCurrent;
  const InfoWeatherContainer({super.key, required this.weatherDataCurrent});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      width: 350,
      decoration: BoxDecoration(
        color: Color.fromRGBO(49, 57, 87, 1),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _renderInfo("Wind", "${weatherDataCurrent.current.windSpeed}km/h"),
          Container(
            height: 30,
            width: 2,
            color: Color.fromARGB(255, 9, 34, 62),
          ),
          _renderInfo("Temp", "${weatherDataCurrent.current.temp}"),
          Container(
            height: 30,
            width: 2,
            color: Color.fromARGB(255, 9, 34, 62),
          ),
          _renderInfo("Humidity", "${weatherDataCurrent.current.humidity}%"),
        ],
      ),
    );
  }

// Wind -> 8km/h, Temp -> 18, Humidity -> 79%

  Widget _renderInfo(String title, String info) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
      Text(
        info,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    ]);
  }
}
