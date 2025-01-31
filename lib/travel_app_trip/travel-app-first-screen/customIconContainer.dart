import 'package:flutter/material.dart';

class CustomIconContainer extends StatelessWidget {
  CustomIconContainer({
    super.key,
    required this.icon,
    required this.color,
    required this.containerColor,
    required this.enabledborder,
  });
  final IconData icon;
  final Color color;
  final Color containerColor;
  final bool enabledborder;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      width: 90,
      child: Icon(
        icon,
        size: 50,
        color: color,
      ),
      decoration: BoxDecoration(
          border: Border.all(
              width: 0.7,
              color: enabledborder ? Colors.white : Colors.transparent),
          color: containerColor,
          borderRadius: BorderRadius.circular(50)),
    );
  }
}
