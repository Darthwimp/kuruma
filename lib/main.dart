import 'package:flutter/material.dart';
import 'package:project_kuruma/pages/login_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        primaryColor: Colors.white,
    ),
      home: Login(),
    ),
  );
}
