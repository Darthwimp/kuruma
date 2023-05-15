import 'package:flutter/material.dart';
import 'package:project_kuruma/data/car_info.dart';
import 'package:project_kuruma/theme/theme.dart';

Widget carList(int index) {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(15),
          color: Colors.purple.shade50),
      child: ListTile(
        leading: Container(
          height: 90,
          width: 90,
          child: Image.asset(
            carHomePage[index]["image"].toString(),
          ),
        ),
        title: Text(
          carHomePage[index]["car_name"].toString(), style: secFont(19),
        ),
        subtitle: Row(
          children: [
            Text(carHomePage[index]["top_speed"].toString(), style: secFont(19)),
            const SizedBox(width: 10),
            Text(carHomePage[index]["horsepower"].toString(), style: secFont(19)),
          ],
        ),
        trailing: Icon(Icons.star, size: 30, color: Colors.yellow.shade900,),
      ),
    ),
  );
}
