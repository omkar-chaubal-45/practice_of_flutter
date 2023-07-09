import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:practice_of_flutter/pages/homepage.dart';
import 'package:practice_of_flutter/pages/login_page.dart';
import 'package:practice_of_flutter/utils/routes.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      theme: ThemeData(primarySwatch: Colors.green,
      primaryTextTheme: GoogleFonts.latoTextTheme()),
      darkTheme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
