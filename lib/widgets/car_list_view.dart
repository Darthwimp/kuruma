import 'package:flutter/material.dart';

Widget carList(){
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: ListTile(
      leading: Image.asset('assets/bmw.png'),
    ),
  );
}