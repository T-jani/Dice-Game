import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Diice'),
        backgroundColor: Colors.red,
      ),
      body: Dice(),
    ),
  ));
}

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  var leftdicenumber = 1;
  var Rightdicenumber = 2;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    leftdicenumber = Random().nextInt(6) + 1;
                  });
                },
                child: Image(
                  image: AssetImage('assets/dice$leftdicenumber.png'),
                  width: 200,
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    Rightdicenumber = Random().nextInt(6) + 1;
                  });
                },
                child: Image(
                  image: AssetImage('assets/dice$Rightdicenumber.png'),
                  width: 200,
                ),
              ),
            )
            // Image(image: AssetImage('/assets/dice2.png'))
          ],
        ),
      ),
    );
  }
}
