import 'package:flutter/material.dart';
import 'package:roll_dic_app_se2/gradiant_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradiantContainer(const Color.fromARGB(255, 40, 119, 255),
            const Color.fromARGB(255, 72, 110, 175)),
      ),
    ),
  );
}
