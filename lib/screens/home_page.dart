// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:forecast_app/widgets/container_hourly_widget.dart';
import 'package:forecast_app/widgets/current_temp_widget.dart';
import 'package:forecast_app/widgets/header_widget.dart';
import 'package:forecast_app/widgets/options_widget.dart';
import 'package:forecast_app/widgets/weather_info_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(17, 29, 59, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              // Header
              Header(),
              const SizedBox(
                height: 35,
              ),
              // Icon and temperature
              CurrentTemp(),
              const SizedBox(
                height: 25,
              ),
              // Information about the wind, temp and humidity
              InfoWeatherContainer(),
              SizedBox(
                height: 20,
              ),
              OptionsWeather(),
              SizedBox(
                height: 20,
              ),
              //Options for view about temp
              ContainerHourly()
            ],
          ),
        ),
      ),
    );
  }
}
