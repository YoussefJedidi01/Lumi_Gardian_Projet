import 'package:flutter/material.dart';

class GPSScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final gpsCoordinates = 'Latitude: 40.7128, Longitude: -74.0060'; // Placeholder

    return Scaffold(
      appBar: AppBar(
        title: Text('GPS Position'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.gps_fixed, size: 100, color: Colors.blue),
            SizedBox(height: 20),
            Text(
              'Location:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              gpsCoordinates,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
