import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DicRoller extends StatefulWidget {
  const DicRoller({super.key});
  @override
  State<DicRoller> createState() {
    return _DicRollerState();
  }
}

class _DicRollerState extends State<DicRoller> {
  var activeDicRollNum = 2;

  void rollDice() {
    setState(() {
      var newDicRollNum = 0;
      do {
        newDicRollNum = randomizer.nextInt(6) + 1;
      } while (activeDicRollNum == newDicRollNum);
      activeDicRollNum = newDicRollNum;
    });
  }

  @override
  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(
        "assets/images/dice-$activeDicRollNum.png",
        width: 200,
      ),
      const SizedBox(
        height: 20,
      ),
      TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              // padding: const EdgeInsets.only(top: 20.0),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 25)),
          child: const Text("Roll Dice")),
    ]);
  }
}
