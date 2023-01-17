// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class OptionsWeather extends StatelessWidget {
  const OptionsWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _renderOptions("Today", Colors.blue, Colors.white),
        _renderOptions("Tomorrow", Color.fromRGBO(49, 57, 87, 1), Colors.white),
        _renderOptions("7 Days", Color.fromRGBO(49, 57, 87, 1), Colors.white),
      ],
    );
  }

  Widget _renderOptions(String option, Color colorBackground, Color colorText) {
    return Container(
      alignment: Alignment.center,
      height: 40,
      width: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: colorBackground,
      ),
      child: Text(
        option,
        style: TextStyle(
          color: colorText,
          fontSize: 15,
        ),
      ),
    );
  }
}
