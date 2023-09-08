import 'package:flutter/material.dart';

class SecondTab extends StatelessWidget {
  const SecondTab({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Container(
        height: 30,
        width: double.infinity,
        color: Colors.brown,
        child: Text('its a greate book'),
      ),
    );
  }
}
