// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:forecast_app/model/forecast_data_hourly.dart';
import 'package:intl/intl.dart';

class ContainerHourly extends StatelessWidget {
  final WeatherDataHourly? weatherDataHourly;
  const ContainerHourly({super.key, required this.weatherDataHourly});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      padding: EdgeInsets.only(
        left: 14,
      ),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => SizedBox(
          width: 30,
        ),
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: 6,
        itemBuilder: (context, index) => Container(
          height: 100,
          width: 80,
          decoration: BoxDecoration(
            color: Color.fromRGBO(49, 57, 87, 1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              HourlyDetails(
                  index: index,
                  temp: weatherDataHourly!.hourly[index].temp!,
                  timeStamp: weatherDataHourly!.hourly[index].dt!,
                  weatherIcon:
                      weatherDataHourly!.hourly[index].weather![0].icon!),
            ],
          ),
        ),
      ),
    );
  }
}

class HourlyDetails extends StatelessWidget {
  int temp;
  int index;

  int timeStamp;
  String weatherIcon;

  HourlyDetails(
      {Key? key,
      required this.index,
      required this.timeStamp,
      required this.temp,
      required this.weatherIcon})
      : super(key: key);

  String getTime(final timeStamp) {
    DateTime time = DateTime.fromMillisecondsSinceEpoch(timeStamp * 1000);

    String x = DateFormat("jm").format(time);
    return x;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 50,
            width: 50,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white),
              color: Color.fromRGBO(49, 57, 87, 1),
            ),
            child: Image.asset(
              "assets/weather/$weatherIcon.png",
              height: 40,
              width: 40,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            "$temp °",
            style: TextStyle(
              color: Colors.blue[200],
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            alignment: Alignment.center,
            height: 30,
            width: 60,
            decoration: BoxDecoration(
                color: Colors.yellow, borderRadius: BorderRadius.circular(40)),
            child: Text(
              getTime(timeStamp),
              style: TextStyle(
                color: Color.fromRGBO(49, 57, 87, 1),
              ),
            ),
          )
        ],
      ),
    );
  }
}
