import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uvento/app_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0xFF102733), //or set color with: Color(0xFF0000FF)
    ));

    return MaterialApp(
      title: 'UVENTO',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF102733),
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.white),
          body2: TextStyle(color: Colors.white),
          title: TextStyle(color: Colors.white),
          display4: TextStyle(color: Colors.white),
          display3: TextStyle(color: Colors.white),
          display2: TextStyle(color: Colors.white),
          display1: TextStyle(color: Colors.white),
          headline: TextStyle(color: Colors.white),
          subhead: TextStyle(color: Colors.white),
          caption: TextStyle(color: Colors.white),
          button: TextStyle(color: Colors.white),
          subtitle: TextStyle(color: Colors.white),
          overline: TextStyle(color: Colors.white),
        ),
      ),
      home: AppScreen(),
    );
  }
}
