import 'package:flutter/material.dart';
import 'package:flutteranimations/themes/appColors.dart';
import 'package:flutteranimations/themes/spacing.dart';
import 'package:flutteranimations/travel_app_trip/travel-app-first-screen/customIconContainer.dart';

class Customnavbutton extends StatefulWidget {
  const Customnavbutton({super.key});

  @override
  State<Customnavbutton> createState() => _CustomnavbuttonState();
}

class _CustomnavbuttonState extends State<Customnavbutton> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 15,
      left: 20,
      right: 20,
      child: Container(
        height: 120,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 19, 20, 18)
              .withOpacity(0.7), // Semi-transparent background
          borderRadius: BorderRadius.circular(70), // Rounded corners
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Spacing.horizentalSpacing(30),
            Text(
              'See More',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            CustomIconContainer(
                color: Appcolors.BlackLight,
                containerColor: Colors.white,
                enabledborder: false,
                icon: Icons.arrow_forward_ios_outlined),
          ],
        ),
      ),
    );
  }
}
