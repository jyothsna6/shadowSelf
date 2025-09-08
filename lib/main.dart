import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            // Time and status bar placeholder
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("9:41", style: TextStyle(color: Colors.white, fontSize: 18)),
                  Icon(Icons.battery_full, color: Colors.white),
                ],
              ),
            ),

            // Apps Grid
            Expanded(
              child: GridView.count(
                crossAxisCount: 4,
                padding: const EdgeInsets.all(12),
                children: [
                  appIcon(Icons.video_call, "FaceTime"),
                  appIcon(Icons.calendar_today, "Calendar"),
                  appIcon(Icons.photo, "Photos"),
                  appIcon(Icons.camera_alt, "Camera"),
                  appIcon(Icons.mail, "Mail"),
                  appIcon(Icons.note, "Notes"),
                  appIcon(Icons.alarm, "Reminders"),
                  appIcon(Icons.access_time, "Clock"),
                  appIcon(Icons.newspaper, "News"),
                  appIcon(Icons.tv, "TV"),
                  appIcon(Icons.language, "Safari"),
                  appIcon(Icons.shop, "App Store"),
                  appIcon(Icons.map, "Maps"),
                  appIcon(Icons.favorite, "Health"),
                  appIcon(Icons.account_balance_wallet, "Wallet"),
                  appIcon(Icons.settings, "Settings"),
                  appIcon(Icons.apps, "My App", badge: true),
                ],
              ),
            ),

            // Search Bar
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.search, color: Colors.white54),
                  SizedBox(width: 8),
                  Text("Search", style: TextStyle(color: Colors.white54)),
                ],
              ),
            ),

            // Dock
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  dockIcon(Icons.phone, Colors.green),
                  dockIcon(Icons.language, Colors.blue),
                  dockIcon(Icons.message, Colors.greenAccent),
                  dockIcon(Icons.music_note, Colors.red),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget appIcon(IconData icon, String label, {bool badge = false}) {
    return Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white12,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Icon(icon, color: Colors.white, size: 30),
            ),
            const SizedBox(height: 4),
            Text(label, style: const TextStyle(color: Colors.white, fontSize: 12)),
          ],
        ),
        if (badge)
          Positioned(
            right: 12,
            top: 2,
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              child: const Text(
                "1",
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
            ),
          ),
      ],
    );
  }

  Widget dockIcon(IconData icon, Color color) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Icon(icon, color: Colors.white, size: 30),
    );
  }
}
