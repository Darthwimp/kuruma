import 'package:flutter/material.dart';
import 'package:project_kuruma/theme/theme.dart';

class CarInfo extends StatelessWidget {
  final String ?car;
  CarInfo({this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(car ?? 'No data'),
          Text("WORK IS STILL UNDER  PROCESS", style: secFont(30),)
        ],
      ),
    );
  }
}