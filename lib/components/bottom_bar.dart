import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:hi_farm/pages/consultant/book_consult.dart';
import 'package:hi_farm/pages/consultant/consultant_list.dart';

import '../pages/home/home_page.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _page = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    ConsultantList(),
    Text('Index 2: School'),
    Text('Index 3: School'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_page),
      ),
      bottomNavigationBar: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 17),
          child: CurvedNavigationBar(
            backgroundColor: Colors.white,
            color: const Color.fromRGBO(153, 167, 108, 1),
            buttonBackgroundColor: const Color.fromRGBO(84, 116, 131, 1),
            height: 50,
            items: <Widget>[
              Icon(Icons.home, size: 30, color: Colors.white),
              Icon(Icons.chat, size: 30, color: Colors.white),
              Icon(Icons.shopping_bag, size: 30, color: Colors.white),
              Icon(Icons.person, size: 30, color: Colors.white),
            ],
            onTap: (index) {
              setState(() {
                _page = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
