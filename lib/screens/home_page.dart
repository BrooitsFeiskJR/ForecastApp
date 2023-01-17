// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:forecast_app/controller/global_controller.dart';
import 'package:forecast_app/widgets/bottom_navigatoin_bar.dart';
import 'package:forecast_app/widgets/container_hourly_widget.dart';
import 'package:forecast_app/widgets/current_temp_widget.dart';
import 'package:forecast_app/widgets/header_widget.dart';
import 'package:forecast_app/widgets/options_widget.dart';
import 'package:forecast_app/widgets/weather_info_widget.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalController globalController = Get.put(
    GlobalController(),
    permanent: true,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(17, 29, 59, 1),
      body: SafeArea(
        child: Obx(
          () => globalController.checkLoading().isTrue
              ? Center(
                  child: const CircularProgressIndicator(),
                )
              : Padding(
                  padding: const EdgeInsets.only(top: 20, left: 25, right: 25),
                  child: Column(
                    children: [
                      // Header
                      Header(),
                      const SizedBox(
                        height: 6,
                      ),
                      // Icon and temperature
                      CurrentTemp(
                        weatherDataCurrent:
                            globalController.getData().getCurrentWeather(),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      // Information about the wind, temp and humidity
                      InfoWeatherContainer(
                        weatherDataCurrent:
                            globalController.getData().getCurrentWeather(),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      //Options for view about temp
                      OptionsWeather(),
                      SizedBox(
                        height: 20,
                      ),
                      // Container for show temperature each hour
                      ContainerHourly(
                        weatherDataHourly:
                            globalController.getData().getHourlyWeather(),
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      BottomBar()
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
