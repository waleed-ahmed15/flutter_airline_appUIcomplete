import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_airline_app/screens/home_screen.dart';

class Bottom_Bar extends StatefulWidget {
  const Bottom_Bar({Key? key}) : super(key: key);

  @override
  State<Bottom_Bar> createState() => _Bottom_BarState();
}

class _Bottom_BarState extends State<Bottom_Bar> {
  var selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Text("search"),
    Text("Ticket"),
    Text("Accounts"),
  ];
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: onItemTapped,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
                label: "home",
                activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                icon: Icon(FluentSystemIcons.ic_fluent_home_regular)),
            BottomNavigationBarItem(
                label: "search",
                activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
                icon: Icon(FluentSystemIcons.ic_fluent_search_regular)),
            BottomNavigationBarItem(
                label: "Ticket",
                activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
                icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular)),
            BottomNavigationBarItem(
                label: "Profile",
                activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
                icon: Icon(FluentSystemIcons.ic_fluent_person_regular))
          ]),
    );
  }
}
