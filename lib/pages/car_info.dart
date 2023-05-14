import 'package:flutter/material.dart';

class CarInfo extends StatelessWidget {
  final String ?car;
  CarInfo({this.car});

  @override
  Widget build(BuildContext context) {
    return Text(car ?? 'No data');
  }
}