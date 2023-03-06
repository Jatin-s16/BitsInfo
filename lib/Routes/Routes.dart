import 'package:flutter/material.dart';
import 'package:sharing_app/ProfilePage/ProfilePage.dart';
import 'package:sharing_app/appbar/AppBar.dart';
import 'package:sharing_app/main.dart';
import 'package:sharing_app/provider/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'package:sharing_app/body/body.dart';
import 'package:sharing_app/drawer.dart';

class hackathoncase extends StatefulWidget {
  const hackathoncase({Key? key}) : super(key: key);

  @override
  _HackathonCase createState() => _HackathonCase();
}

class _HackathonCase extends State<hackathoncase> {
  int _selectedIndex = 0;

  // static final List<Widget> _appbarlist = <Widget>[
  //   const HomeAppBar(),
  //   const AddAppBar(),
  //   const ProfileAppBar(),
  // ];

  static final List<Widget> _bodylist = <Widget>[
    const HomePageHackathonBody(),
    const HomePageBody(),
    const AddPageBody(),
    const NotifBody(),
    const ProfilePageBody(),
  ];
  // static final List<Widget> _drawerlist = <Widget>[
  //   const NavDrawer(),
  //   const Nav2Drawer(),
  //   const NavDrawer(),
  // ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white70,

          // drawer: NavigationDrawer(),

          // appBar: PreferredSize(
          //     preferredSize: const Size.fromHeight(56),
          //     child: _appbarlist[_selectedIndex],
          // ),

          body: _bodylist[_selectedIndex],

          bottomNavigationBar: BottomNavigationBar(
              items: const <BottomNavigationBarItem>[

                BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.home,
                    color: Colors.blueAccent,
                  ),
                  icon: Icon(Icons.home, color: Colors.black),
                  title: Text('Home', style: TextStyle(color: Colors.black)),
                  backgroundColor: Colors.white,
                ),

                BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.group_rounded,
                    color: Colors.blueAccent,
                  ),
                  icon: Icon(Icons.group_rounded, color: Colors.black),
                  title: Text('Teams', style: TextStyle(color: Colors.black)),
                  backgroundColor: Colors.white,
                ),

                BottomNavigationBarItem(
                    activeIcon: Icon(
                      Icons.add_circle_rounded,
                      color: Colors.blueAccent,
                    ),
                    icon: Icon(Icons.add_circle_rounded, color: Colors.black),
                    title: Text('Add', style: TextStyle(color: Colors.black)),
                    backgroundColor: Colors.white,
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.notifications,
                    color: Colors.blueAccent,
                  ),
                  icon: Icon(
                      Icons.notifications,
                      color: Colors.black
                  ),
                  title: Text('Notification', style: TextStyle(color: Colors.black)),
                  backgroundColor: Colors.white,
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.person,
                    color: Colors.blueAccent,
                  ),
                  icon: Icon(
                      Icons.person,
                      color: Colors.black
                  ),
                  title: Text('Profile', style: TextStyle(color: Colors.black)),
                  backgroundColor: Colors.white,
                ),
              ],
              type: BottomNavigationBarType.fixed,
              currentIndex: _selectedIndex,
              iconSize: 26,
              unselectedFontSize: 10,
              selectedFontSize: 10,
              onTap: _onItemTapped,
              // elevation: 2,
              ),
          ),
        ),
      );
  }
}
