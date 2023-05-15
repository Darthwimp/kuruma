import 'package:flutter/material.dart';
import 'package:project_kuruma/theme/theme.dart';
import 'package:project_kuruma/widgets/car_card.dart';

import 'package:project_kuruma/data/car_info.dart';
import 'package:project_kuruma/widgets/car_list_view.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Kuruma',
          style: mainFont(28),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            SizedBox(
              height: screenSize.height * 0.5,
              child: GridView.count(
                crossAxisCount: 3,
                children: List.generate(
                  cars.length,
                  (index) =>
                      CarCard(counter: index, name: cars[index]['car_name']),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              height: screenSize.height * 0.35,
              child: ListView.builder(
                itemCount: carHomePage.length,
                itemBuilder: (BuildContext context, int index) => carList(index),
              ),
            )
          ],
        ),
      ),
    );
  }
}
