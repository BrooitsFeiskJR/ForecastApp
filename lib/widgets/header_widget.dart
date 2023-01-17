import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:forecast_app/controller/global_controller.dart';
import 'package:geocoding/geocoding.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  String city = "Bem vindo! Tenha um otimo dia";
  final GlobalController globalController =
      Get.put(GlobalController(), permanent: true);

  String date = DateFormat("yMMMMd").format(DateTime.now());

  @override
  void initState() {
    getAddress(
      globalController.getLattitude().value,
      globalController.getLongitude().value,
    );

    super.initState();
  }

  getAddress(lat, lon) async {
    List<Placemark> placemark = await placemarkFromCoordinates(lat, lon);
    Placemark place = placemark[0];
    setState(() {
      city = place.administrativeArea!;
    });
  }

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
              date,
              style: TextStyle(
                color: Colors.grey[400],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              city,
              style: const TextStyle(
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
