import 'package:flutter/material.dart';

class BatteryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final batteryPercentage = 75; // Placeholder

    return Scaffold(
      appBar: AppBar(
        title: Text('Battery Percentage'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.battery_full, size: 100, color: Colors.green),
            SizedBox(height: 20),
            Text(
              'Battery Level: $batteryPercentage%',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
