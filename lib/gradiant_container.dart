import 'package:flutter/material.dart';
import 'package:roll_dic_app_se2/dice_roller.dart';

const startAlignment = Alignment.topRight;
const endAligment = Alignment.bottomLeft;

class GradiantContainer extends StatelessWidget {
  const GradiantContainer(this.color1, this.color2, {super.key});

  // Clolor variable
  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAligment,
        ),
      ),
      child: const Center(
        child: DicRoller(),
      ),
    );
  }
}
