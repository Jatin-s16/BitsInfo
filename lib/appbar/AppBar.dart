import 'package:sharing_app/Home/HomePage.dart';
import 'package:sharing_app/Routes/Routes.dart';
import 'package:flutter/material.dart';
import 'package:sharing_app/provider/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'package:sharing_app/main.dart';

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({Key? key}) : super(key: key);
  @override

  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
              centerTitle: true,
              // title:
              // const Text('Ram Bhawan', style: TextStyle(color: Colors.black)),
              backgroundColor: Colors.transparent,
              // leading: IconButton(
              //   icon: Icon(Icons.menu),
              //   color: Colors.black,
              //   onPressed: () => {NavigationDrawer()},
              // ),
              iconTheme: IconThemeData(color: Colors.black),
              elevation: 0,

              actions: [
                TextButton(
                    child: Text('Logout'),
                    onPressed: () {
                      final provider = Provider.of<GoogleSignInProvider>(context, listen: false);
                      provider.logout();
                    }
                )
              ]
          ),
        ),
    );
  }
}

class AddAppBar extends StatelessWidget {
  const AddAppBar({Key? key}) : super(key: key);
  @override

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        ),
    );
  }
}

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);
  @override

  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
              centerTitle: true,
              // title:
              // const Text('Ram Bhawan', style: TextStyle(color: Colors.black)),
              backgroundColor: Colors.transparent,
              elevation: 0,
              // leading: IconButton(
              //   icon: Icon(Icons.menu),
              //   color: Colors.black,
              //   onPressed: () => {NavigationDrawer()},
              // ),
              iconTheme: IconThemeData(color: Colors.black),
          ),
        ),
    );
  }
}