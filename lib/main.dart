import 'package:flutter/material.dart';
import 'package:flutteranimations/travel_app_trip/travel-app-first-screen/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home_Screen(),
    );
  }
}
