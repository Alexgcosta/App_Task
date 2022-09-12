import 'package:flutter/material.dart';
import 'dart:math' as math;

class Desafio extends StatefulWidget {
  const Desafio({Key? key}) : super(key: key);

  @override
  State<Desafio> createState() => _DesafioState();
}

class _DesafioState extends State<Desafio> {
  _DesafioState();

  Color color1 = Colors.green.shade900;
  Color color2 = Colors.blue.shade900;
  Color color3 = Colors.red.shade900;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: color1,
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
              ),
              onPressed: () {
                setState(() {
                  color1 =
                      Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                          .withOpacity(1.0);
                });
              },
              child: null,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: color2,
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
              ),
              onPressed: () {
                setState(() {
                  color2 =
                      Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                          .withOpacity(1.0);
                });
              },
              child: null,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: color3,
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
              ),
              onPressed: () {
                setState(() {
                  color3 =
                      Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                          .withOpacity(1.0);
                });
              },
              child: null,
            ),
          ],
        )
      ],
    );
  }
}