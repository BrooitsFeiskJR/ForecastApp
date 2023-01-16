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
              )
            ],
          ),
        ),
      ),
    );
  }
}
