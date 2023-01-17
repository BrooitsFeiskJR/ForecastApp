import 'package:flutter/material.dart';

class InfoWeatherContainer extends StatelessWidget {
  const InfoWeatherContainer({super.key});

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
          _renderInfo("Wind", "8km/h"),
          Container(
            height: 30,
            width: 2,
            color: Color.fromARGB(255, 9, 34, 62),
          ),
          _renderInfo("Temp", "18"),
          Container(
            height: 30,
            width: 2,
            color: Color.fromARGB(255, 9, 34, 62),
          ),
          _renderInfo("Humidity", "79%"),
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
