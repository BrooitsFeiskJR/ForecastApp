import 'package:flutter/material.dart';
import 'package:forecast_app/screens/home_page.dart';

void main() {
  runApp(const ForecastApp());
}

class ForecastApp extends StatelessWidget {
  const ForecastApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
