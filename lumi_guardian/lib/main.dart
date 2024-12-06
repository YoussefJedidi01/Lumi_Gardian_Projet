import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'screens/battery_screen.dart';
import 'screens/gps_screen.dart';
import 'screens/object_detection_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Glove Assistant',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MenuScreen(),
    );
  }
}

class MenuScreen extends StatelessWidget {
  final FlutterTts flutterTts = FlutterTts();

  MenuScreen() {
    configureTTS();
  }

  void configureTTS() async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
  }

  void _speak(String text) async {
    await flutterTts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Glove Assistant Menu'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue[100]!, Colors.blue[400]!],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Padding(
              padding: const EdgeInsets.only(top: 1.0),
              child: Text(
                'LUMI GUARDIAN',
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 6, 70, 116),
                  letterSpacing: 2.0,
                ),
              ),
            ),
            // Buttons Below the Title
            SizedBox(height: 40), // Space between the title and buttons
            MenuButton(
              text: 'Check Battery Percentage',
              icon: Icons.battery_charging_full,
              onPressed: () {
                   _speak(
                  'YA HAMADI!!!!!');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BatteryScreen()),
                );
              },
            ),
            MenuButton(
              text: 'Check GPS Position',
              icon: Icons.gps_fixed,
              onPressed: () {
                   _speak(
                  'WAYWAA!!!!!');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GPSScreen()),
                );
              },
            ),
            MenuButton(
              text: 'Object Detection Alert',
              icon: Icons.warning,
              onPressed: () {
                _speak(
                  'GLASS WELL BEERA!!');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ObjectDetectionScreen()),
                );
              },
            ),
            SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: () => _speak(
                  'YRAWAH !!!!! bro Welcome to the Glove Assistant! Use the buttons above to check battery status, GPS position, or object detection alerts.'),
              icon: Icon(Icons.volume_up),
              label: Text('Speak Instructions'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                shadowColor: Colors.grey,
                elevation: 8.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class MenuButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onPressed;

  MenuButton({required this.text, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),  // Adjust vertical and horizontal padding
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: Icon(icon, size: 30),  // Adjust icon size
        label: Text(
          text,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 30.0),  // Add more padding around the button content
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          shadowColor: Colors.grey,
          elevation: 8.0,
        ),
      ),
    );
  }
}
