import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:sharing_app/provider/google_sign_in.dart';
import 'package:sharing_app/Home/HomePage.dart';
import 'package:sharing_app/main.dart';


class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
    );
  }
}

class Nav2Drawer extends StatelessWidget {
  const Nav2Drawer({Key? key}) : super(key: key);
  @override

  Widget build(BuildContext context) {
    return Scaffold(
    );
  }
}