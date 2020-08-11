import 'dart:async';
import 'package:flutter/material.dart';
import 'Pages/HomePage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Anime Planet App',
      theme: ThemeData(fontFamily: 'Palanquin'),
      home: Splash(),
    );
  }
}

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2),() => Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder:(BuildContext context) => HomePage()
    )
    )
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: size.height,
        width: size.width,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 20.0,
              left: 75.0,
              child: Image.asset('assets/images/MainLogo.png',height: 250,width: 250,)
              ),
              Positioned(
                bottom: 0.0,
                child: Container(
                  height: size.height*0.66,
                  width: size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/anime_background1.png'),
                      fit: BoxFit.fill,
                    )
                  ),

              ))
          ],
        ),
      )
    );
  }
}
