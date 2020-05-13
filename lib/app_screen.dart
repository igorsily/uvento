import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uvento/home_screen.dart';

class AppScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Stack(
          children: <Widget>[
            Positioned(
              left: -60,
              top: -20,
              child: SvgPicture.asset("assets/1232.svg"),
            ),
            Positioned(
              right: -35,
              child: SvgPicture.asset("assets/1381.svg"),
            ),
            Positioned(
              right: 110,
              child: SvgPicture.asset("assets/1189.svg"),
            ),
            Positioned(
              right: -35,
              top: 260,
              child: SvgPicture.asset("assets/1248.svg"),
            ),
            Positioned(
              right: -191,
              top: 380,
              child: SvgPicture.asset("assets/1250.svg"),
            ),
            Positioned(
              bottom: -25,
              child: SvgPicture.asset("assets/1510.svg"),
            ),
            Positioned(
              top: 300,
              left: 40,
              child: SvgPicture.asset("assets/logo.svg"),
            ),
            Positioned(
              top: 380,
              left: 45,
              child: Row(
                children: <Widget>[
                  Text(
                    "UVE",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    "NTO",
                    style: TextStyle(
                      color: Color(0xFFFFA700),
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 440,
              left: 45,
              child: Container(
                width: 300,
                height: 100,
                child: Text(
                  "There’s a lot happening around you! Our mission is to provide what’s happening near you!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 520,
              left: 45,
              child: InkWell(
                child: Row(
                  children: <Widget>[
                    Text(
                      "Get Started",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    SvgPicture.asset("assets/29.svg")
                  ],
                ),
                onTap: () => Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (_) => HomeScreen())),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
