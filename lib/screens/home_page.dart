// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(49, 57, 87, 1),
                      border: Border.all(color: Colors.grey),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.notifications, color: Colors.blue[200]),
                  ),
                  Column(
                    children: [
                      Text(
                        'Monday, 12 Feb',
                        style: TextStyle(
                          color: Colors.grey[400],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'United Arab, Dubai',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 200,
                    width: 170,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(49, 57, 87, 1),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.thunderstorm,
                      color: Colors.white,
                      size: 90,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "12°C",
                        style: TextStyle(
                          fontSize: 70,
                          color: Colors.blue[200],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        "Rain showers",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                height: 85,
                width: 350,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(49, 57, 87, 1),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          "Wind",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "8 km/h",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 30,
                      width: 2,
                      color: Color.fromARGB(255, 9, 34, 62),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          "Temp",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "18°",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 30,
                      width: 2,
                      color: Color.fromARGB(255, 9, 34, 62),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          "Humidity",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "79%",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue[400],
                    ),
                    child: Text(
                      "Today",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromRGBO(49, 57, 87, 1),
                    ),
                    child: Text(
                      "Tomorrow",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromRGBO(49, 57, 87, 1),
                    ),
                    child: Text(
                      "7 Days",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
