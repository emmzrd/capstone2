import 'package:capstone2_jobhub2/screens/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:capstone2_jobhub2/screens/home_screen.dart';
import 'package:capstone2_jobhub2/models/models.dart';
import 'package:provider/provider.dart';
import 'package:capstone2_jobhub2/screens/profile_screen.dart';

class Home extends StatefulWidget {

  Home({Key? key,}) : super(key: key);


  @override
  _HomeState createState() => _HomeState();

}


class _HomeState extends State<Home> {
  int _selectedIndex = 0;


  static List pages = [
    HomeScreen(),
    Container(color: Colors.blue,),
    ProfileScreen(),
    SettingsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }



  @override
  Widget build(BuildContext context) {
    // Wraps all the widgets inside Consumer. When TabManager changes, the widgets below it will rebuild

    return Consumer<TabManager>(
      builder: (context, tabManager, child) {
        return Scaffold(

          // Todo: Replace body
          // Display the correct page widget, based on the current tab index
          body: pages[tabManager.selectedTab],
          bottomNavigationBar: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            child: BottomNavigationBar(
              backgroundColor: Colors.white,
              unselectedItemColor: Color(0XFFA8A8AA),
              selectedItemColor: Color(0XFF4ca6a8),
              // Sets the current index of BottomNavigationBar
              currentIndex: tabManager.selectedTab,
              onTap: (index) {
                // Calls manager.goToTab() when the user taps a different tab,
                // to notify other widgets that the index changed.
                tabManager.goToTab(index);
              },
              items: const[

                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                    ),
                    label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.sms,
                    ),
                    label: 'Message'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.person,
                    ),
                    label: 'Profile'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.settings,
                    ),
                    label: 'Settings'),
              ],
            ),
          ),
        );
      },
    );
  }
}
