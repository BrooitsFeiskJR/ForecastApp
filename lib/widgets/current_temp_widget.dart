import 'package:flutter/material.dart';
import 'package:forecast_app/model/forecast_data_current.dart';

class CurrentTemp extends StatelessWidget {
  final WeatherDataCurrent weatherDataCurrent;
  const CurrentTemp({
    super.key,
    required this.weatherDataCurrent,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 200,
          width: 170,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(49, 57, 87, 1),
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            "assets/weather/${weatherDataCurrent.current.weather![0].icon}.png",
            height: 120,
            width: 120,
          ),
        ),
        Column(
          children: [
            Text(
              "${weatherDataCurrent.current.temp!.toInt()}°",
              style: TextStyle(
                fontSize: 70,
                color: Colors.blue[200],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "${weatherDataCurrent.current.weather![0].main}",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        )
      ],
    );
  }
}
