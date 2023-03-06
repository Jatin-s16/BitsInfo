import 'package:sharing_app/Home/HomePage.dart';
import 'package:sharing_app/Routes/Routes.dart';
import 'package:flutter/material.dart';
import 'package:sharing_app/provider/google_sign_in.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Text('ProfilePage'),
          ),
        ),
      ),
    );
  }
}