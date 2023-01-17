import 'package:flutter/material.dart';

class CurrentTemp extends StatelessWidget {
  const CurrentTemp({super.key});

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
    );
  }
}
