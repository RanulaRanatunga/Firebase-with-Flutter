import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:interview_test/screens/login.dart';
import 'package:interview_test/screens/user/dashboard_countries.dart';
import 'package:interview_test/screens/user/restaurants.dart';

class UserMain extends StatefulWidget {

  UserMain({Key? key}) : super(key: key);

  @override
  _UserMainState createState() => _UserMainState();
}


class _UserMainState extends State<UserMain> {

    int _selectedIndex = 0;
    static List<Widget> _widgetOptions = <Widget>[
    DashboardCountries(),
    RestaurantMaps(),
  ];

   void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.flag),
            label: 'Countries',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Restaurants',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        onTap: _onItemTapped,
      ),
    );
  }
}