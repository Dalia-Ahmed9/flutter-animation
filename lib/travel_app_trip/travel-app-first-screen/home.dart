import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutteranimations/themes/appColors.dart';
import 'package:flutteranimations/travel_app_trip/travel-app-first-screen/customIconContainer.dart';
import 'package:flutteranimations/travel_app_trip/travel-app-first-screen/screenOne.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  int currentIndex = 0;

  //list of screens
  final List<Widget> pages = [
    ScreenOne(),
    Center(
      child: Text(' Screen 2'),
    ),
    Center(
      child: Text(' Screen 3'),
    ),
    Center(
      child: Text(' Screen 4'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: pages[currentIndex],
      bottomNavigationBar: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          height: 130,
          decoration: BoxDecoration(
            color: Appcolors.BlackLight,
            borderRadius: BorderRadius.circular(60),
          ),
          child: Row(
            children: [
              naveItem(0, CupertinoIcons.home),
              naveItem(1, Icons.menu),
              naveItem(2, CupertinoIcons.heart),
              naveItem(3, Icons.more_vert),
            ],
          ),
        ),
      )),
    );
  }

  Widget naveItem(int index, IconData icon) {
    final isSelected = currentIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          currentIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: CustomIconContainer(
          enabledborder: false,
          color: isSelected ? Appcolors.BlackLight : Colors.grey,
          icon: icon,
          containerColor: isSelected ? Colors.white : Appcolors.BlackLight,
        ),
      ),
    );
  }
}
