import 'package:flutter/material.dart';
import 'package:flutteranimations/themes/appColors.dart';

class SearchPart extends StatelessWidget {
  const SearchPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Padding(
          padding: EdgeInsets.all(20.0),
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.all(40),
              prefixIcon: Padding(
                padding: EdgeInsets.all(15.0),
                child: Icon(
                  Icons.search,
                  size: 40,
                ),
              ),
              labelText: 'Search',
              labelStyle: TextStyle(fontSize: 30),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2),
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              border: OutlineInputBorder(),
            ),
          ),
        ),

        //the right icon in search bar
        Positioned(
          right: 26,
          top: 27,
          child: Container(
            height: 90,
            width: 100,
            child: Icon(
              Icons.tune,
              size: 50,
              color: Colors.grey[200],
            ),
            decoration: BoxDecoration(
                color: Appcolors.BlackLight,
                borderRadius: BorderRadius.circular(50)),
          ),
        )
      ],
    );
  }
}
