import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
