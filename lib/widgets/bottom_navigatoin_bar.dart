import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: Color.fromRGBO(49, 57, 87, 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.home, color: Colors.blue[300]),
          Icon(Icons.search, color: Colors.blue[300]),
          Icon(Icons.person, color: Colors.blue[300]),
        ],
      ),
    );
  }
}
