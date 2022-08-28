// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:login_bildschirm/presentation/Home/Info%20Pages/Aussenbeleuchtung/Aussenbeleuchtung_5.dart';
import 'package:login_bildschirm/presentation/Home/Info%20Pages/Aussenbeleuchtung/Aussenbeleuchtung_3.dart';
import 'package:login_bildschirm/presentation/Home/Info%20Pages/Erdung/Erdung_1.dart';
import 'package:login_bildschirm/presentation/Home/Info%20Pages/Firalux.dart';

class Test_knopf extends StatelessWidget {
  const Test_knopf({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Aussenbeleuchtung_3()),
        );
      },
      child: Container(
        height: 40,
        width: 300,
        decoration: const BoxDecoration(color: Colors.blue),
        child: const Text("Test Knopf"),
      ),
    );
  }
}
