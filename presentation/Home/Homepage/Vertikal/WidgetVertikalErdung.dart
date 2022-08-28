import 'package:flutter/material.dart';

import 'package:login_bildschirm/presentation/Home/Info%20Pages/Erdung/Erdung_1.dart';
import 'package:login_bildschirm/presentation/Home/Info%20Pages/Erdung/Erdung_2.dart';
import 'package:login_bildschirm/presentation/Home/Info%20Pages/Erdung/Erdung_3.dart';
import 'package:login_bildschirm/presentation/Home/Info%20Pages/Erdung/Erdung_4.dart';
import 'package:login_bildschirm/presentation/Home/Info%20Pages/Erdung/Erdung_5.dart';

class WidgetVertikalErdung extends StatelessWidget {
  const WidgetVertikalErdung({Key? key}) : super(key: key);

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
                  MaterialPageRoute(builder: (context) => Erdung_1()),
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
                    "Fundament",
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
                  MaterialPageRoute(builder: (context) => const Erdung_2()),
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
                  "Ring",
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
                  MaterialPageRoute(builder: (context) => Erdung_3()),
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
                  "Tiefen",
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
                  MaterialPageRoute(builder: (context) => Erdung_4()),
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
                  "Blitz",
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
                  MaterialPageRoute(builder: (context) => Erdung_5()),
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
                  "Material",
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
