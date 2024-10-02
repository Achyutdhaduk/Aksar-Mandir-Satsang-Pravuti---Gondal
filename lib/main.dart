import 'package:aksar_mandir_gondal/Screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aksar Mandir Satsang Pravuti - Gondal',
      theme: ThemeData(
        fontFamily: 'regularFont',
        useMaterial3: false,
      ),
      // home: const UserList(),
       home: const SplashScreen(),
    );
  }
}
