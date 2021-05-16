import 'package:flutter/material.dart';
import 'package:humming_sparrow_test/HomePage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      /*initialRoute: '/homePage',
      routes: {
        '/home' : (context) =>Home(),
        '/homePage' : (context) => HomePage(),
        '/profilePage' : (context) => Profile(),

      },*/
      home: HomePage(),


    );
  }
}
