import 'package:flutter/material.dart';
import 'package:flutteranimations/travel_app_trip/travel-app-first-screen/search_part.dart';
import 'package:flutteranimations/travel_app_trip/travel-app-first-screen/tabBar.dart';
import 'package:flutteranimations/travel_app_trip/travel-app-first-screen/tob%20section.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          Tob_Section(),
          SearchPart(),
          TabBarPart(),
        ],
      ),
    );
  }
}
