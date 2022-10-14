import 'package:flutter/material.dart';

import 'HomeScreen.dart';
import 'Latest Offer.dart';
import 'MenuScrren.dart';
import 'MoreScreen.dart';
import 'Profile Screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  List<Map<String, dynamic>> bottomItems = [
    {'icon': Icons.grid_view, 'label': 'Menu'},
    {'icon': Icons.local_offer_sharp, 'label': 'Offers'},
    {'icon': Icons.person, 'label': 'Profile'},
    {'icon': Icons.menu_open, 'label': 'More'},
  ];

  List<Widget> screens = [
    MenuScreen(),
    OfferScreen(),
    Profile(),
    MoreScreen(),
    HomePage(),
  ];

  int pageSelected = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[pageSelected],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: pageSelected == 4 ? Colors.orange : Colors.grey,
        elevation: 0,
        onPressed: () {
          setState(() {
            pageSelected = 4;
          });
        },
        child: Icon(
          Icons.home,
          size: 30,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        width: double.infinity,
        child: BottomAppBar(
          notchMargin: 13,
          shape: CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              bottomItems.length,
              (index) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        pageSelected = index;
                      });
                    },
                    icon: Icon(
                      bottomItems[index]['icon'],
                      color:
                          pageSelected == index ? Colors.orange : Colors.grey,
                    ),
                  ),
                  Text(bottomItems[index]['label'])
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
