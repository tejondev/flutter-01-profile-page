import 'package:flutter/material.dart';
import 'package:profile_page/presentation/config/theme/system_statusbar.dart';

import 'presentation/screens/profile_screen.dart';

void main() {
  customSystemChrome(); // Custom System Status Bar
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/profile',
      routes: {
        '/profile': (context) => const ProfileScreen(),
      },
    );
  }
}
