import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutteranimations/themes/appColors.dart';
import 'package:flutteranimations/travel_app_trip/travel-app-first-screen/draggling_image.dart';

class TabBarPart extends StatefulWidget {
  const TabBarPart({super.key});

  @override
  State<TabBarPart> createState() => _TabBarPartState();
}

class _TabBarPartState extends State<TabBarPart>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(
        length: 4,
        vsync: this,
        initialIndex: 0,
        animationDuration: Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      animationDuration: Duration(seconds: 1),

      //color: Colors.grey[200],

      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: 60,
            child: ButtonsTabBar(
                backgroundColor: Appcolors.BlackLight,
                contentPadding: EdgeInsets.symmetric(horizontal: 40),
                contentCenter: true,
                radius: 90,
                height: 60,
                controller: tabController,
                buttonMargin: EdgeInsets.only(right: 30, left: 30),
                labelStyle: TextStyle(fontSize: 25, color: Colors.white),
                unselectedBackgroundColor: Colors.white,
                unselectedLabelStyle: TextStyle(color: Colors.grey),

                //padding: EdgeInsets.all(15),
                // labelPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),

                tabs: const [
                  Tab(
                    text: 'Asia',
                  ),
                  Tab(
                    text: 'Europ',
                  ),
                  Tab(
                    text: 'South America',
                  ),
                  Tab(
                    text: 'North America',
                  ),
                ]),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              height: 530,
              width: MediaQuery.sizeOf(context).width,
              child: const TabBarView(children: [
                DraggableCardCarousel(),
                DraggableCardCarousel(),
                DraggableCardCarousel(),
                DraggableCardCarousel(),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
