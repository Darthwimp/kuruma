import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:project_kuruma/pages/home.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        primaryColor: Colors.white,
    ),
      home: Home(),
    ),
  );
}
