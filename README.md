# **LumiGuardian**

LumiGuardian is an innovative IoT-powered mobile application designed to assist visually impaired individuals and their caregivers. By connecting to an intelligent obstacle detection glove, LumiGuardian provides real-time feedback, alerts, and insights to enhance mobility and ensure safety.

---

## **Features**

### For Visually Impaired Users:
- **Obstacle Detection Alerts**: Receive real-time vibration or audio cues from the smart glove.
- **Distance Measurement**: Get precise feedback on the proximity of nearby obstacles.
- **Battery Status**: Monitor the glove's battery life to ensure uninterrupted operation.

### For Caregivers:
- **Live Activity Monitoring**: Track the user’s movements and obstacle encounters.
- **Alerts and Notifications**: Get notified of critical situations like low battery or frequent obstacle detection.
- **Safety Insights**: Review detailed logs and statistics to ensure the user’s environment is safe.

### Cross-Platform Compatibility:
LumiGuardian works seamlessly on both Android and iOS devices, thanks to its Flutter-based implementation.

---

## **How It Works**

1. **Smart Glove Connection**:  
   The glove uses sensors to detect obstacles and measure distances, sending data to the LumiGuardian app via IoT connectivity.

2. **Data Processing and Alerts**:  
   - Real-time data is uploaded to **Firebase** for analysis and synchronization.  
   - Alerts are sent to the user and caregiver for immediate action.

3. **App Interface**:  
   - Users can interact with an intuitive interface to check device status.  
   - Caregivers can monitor safety logs and receive notifications.

---

## **Technologies Used**

- **Mobile Framework**: Flutter (Dart)
- **Backend and Database**: Firebase (Real-time Database, Authentication, Cloud Functions)
- **Hardware**: Smart glove with ultrasonic sensors, vibration motors, and Bluetooth module.
- **Cloud Communication**: MQTT for IoT communication.

---

## **Setup Instructions**

1. **Hardware Setup**:  
   - Assemble the smart glove using ultrasonic sensors, vibration motors, and a microcontroller (e.g., ESP32).  
   - Ensure the glove is configured to send data to Firebase.

2. **App Setup**:  
   - Clone this repository:
     ```bash
      https://github.com/YoussefJedidi01/LumiGuardian.git
     ```
   - Install dependencies:
     ```bash
     flutter pub get
     ```
   - Run the app on an emulator or connected device:
     ```bash
     flutter run
     ```

3. **Firebase Configuration**:  
   - Add your Firebase project configuration files (`google-services.json` for Android and `GoogleService-Info.plist` for iOS) to the respective folders in your Flutter project.

---

## **Contributing**

We welcome contributions to improve LumiGuardian! Feel free to submit a pull request or open an issue for any suggestions or bugs.

---

## **License**

This project is licensed under the MIT License.
