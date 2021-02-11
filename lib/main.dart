import 'package:flutter/material.dart';
import 'package:hotel_app/pages/homePage.dart';
import 'utils/routes.dart';
import 'pages/loginPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      initialRoute: "/",
      routes: {
        "/":(context) => LoginPage(),
        MyRoutes.homeRoute: (context)=> HomePage(),
        MyRoutes.loginRoute : (context)=> LoginPage(),
      },
    );
  }
}


