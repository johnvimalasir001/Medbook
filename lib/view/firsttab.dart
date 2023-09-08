import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {
  const FirstTab({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Container(
        height: 10,
        width: double.infinity,
        color: Colors.yellow.shade50,
        child: const Text(
          'Siddha medicine is developed in pre ayurvedic period withcivilization of Mohenzadaro and Harappa in the Indus river valley around 10,000 years back.',
          style: TextStyle(
              fontWeight: FontWeight.w800, wordSpacing: 2, fontSize: 18),
        ),
      ),
    );
  }
}
