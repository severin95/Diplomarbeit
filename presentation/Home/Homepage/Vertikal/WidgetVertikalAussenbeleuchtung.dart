import 'package:flutter/material.dart';
import 'package:login_bildschirm/presentation/Home/Info%20Pages/Aussenbeleuchtung/Aussebleuchutung_1.dart';
import 'package:login_bildschirm/presentation/Home/Info%20Pages/Aussenbeleuchtung/Aussenbeleuchtung_5.dart';
import 'package:login_bildschirm/presentation/Home/Info%20Pages/Aussenbeleuchtung/Aussenbeleuchtung_2.dart';
import 'package:login_bildschirm/presentation/Home/Info%20Pages/Aussenbeleuchtung/Aussenbeleuchtung_3.dart';
import 'package:login_bildschirm/presentation/Home/Info%20Pages/Aussenbeleuchtung/Aussenbeleuchtung_4.dart';

class WidgetVertikalAussenbeleuchtung extends StatelessWidget {
  const WidgetVertikalAussenbeleuchtung({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Aussenbeleuchtung_1()),
                );
              },
              child: InkWell(
                child: Container(
                  height: 85,
                  width: 130,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                      child: Text(
                    "LEDX",
                    style: Theme.of(context).textTheme.headline1,
                  )),
                ),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Aussenbeleuchtung_2()),
                );
              },
              child: Container(
                height: 85,
                width: 130,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                    child: Text(
                  "Firalux",
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0),
                )),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Aussenbeleuchtung_3()),
                );
              },
              child: Container(
                height: 85,
                width: 130,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                    child: Text(
                  "Zum Tobel",
                  style: Theme.of(context).textTheme.headline1,
                )),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Aussenbeleuchtung_4()),
                );
              },
              child: Container(
                height: 85,
                width: 130,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                    child: Text(
                  "Beispiel 4",
                  style: Theme.of(context).textTheme.headline1,
                )),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Aussenbeleuchtung_5()),
                );
              },
              child: Container(
                height: 85,
                width: 130,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                    child: Text(
                  "Beispiel 5",
                  style: Theme.of(context).textTheme.headline1,
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
