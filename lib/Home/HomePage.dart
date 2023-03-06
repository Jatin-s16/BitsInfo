import 'package:flutter/material.dart';
import 'package:sharing_app/Routes/Routes.dart';
import 'package:sharing_app/main.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
          body: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              if(snapshot.connectionState == ConnectionState.waiting)
                return Center(child: CircularProgressIndicator(),);
              else if(snapshot.hasData)
                return hackathoncase();
              else if(snapshot.hasError)
                return Center(child: Text('Some error has occured'),);
              else
                return MyAppStateful();
            },
          ),
        );
  }