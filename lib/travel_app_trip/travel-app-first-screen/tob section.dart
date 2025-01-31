import 'package:flutter/material.dart';

import '../../themes/spacing.dart';
import '../../themes/text_themes.dart';

class Tob_Section extends StatelessWidget {
  const Tob_Section({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Hello, Dalia',
                style: TextThemes.bigText,
              ),
              Spacing.verticalSpacing(3),
              //  Spacing.horizentalSpacing(3),
              Text(
                'Welcome to TripGlide',
                style: TextThemes.bigText
                    .copyWith(fontSize: 21, color: Colors.grey[500]),
              ),
            ],
          ),
          CircleAvatar(
            radius: 50,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  'assets/images/pexels-nazila-30129096.jpg',
                  height: 100,
                  width: 95,
                  fit: BoxFit.cover,
                )),
          )
        ],
      ),
    );
  }
}
