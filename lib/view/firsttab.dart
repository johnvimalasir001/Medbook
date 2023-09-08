import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {
  const FirstTab({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Container(
        height: 30,
        width: double.infinity,
        color: Colors.black,
        child: const Text(
            'Siddha medicine is developed in pre ayurvedic period withcivilization of Mohenzadaro and Harappa in the Indus river valley around 10,000 years back.'),
      ),
    );
  }
}
