import 'package:flutter/material.dart';
import 'package:project_kuruma/pages/car_info_page.dart';
import 'package:project_kuruma/theme/theme.dart';
import 'package:project_kuruma/data/car_info.dart';


class CarCard extends StatelessWidget {
  final int counter;
  String ?name;
  CarCard({required this.counter, this.name});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context, 
          MaterialPageRoute(
            builder: (context) => CarInfo(car: name),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name ?? 'No name', style: mainFont(25)),  
            const SizedBox(height: 10),
            const Icon(Icons.drive_eta, size: 40, color: Colors.white,),
          ],
        ),
      ),
    );
  }
}