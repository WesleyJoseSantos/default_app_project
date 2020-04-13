import 'package:flutter/material.dart';
import '../app/app.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4)).then((_){
      //TODO: Define the startup page
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> app.pages.test));
    });
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.white,
      child: Center(
        child: Container(
          width: 350,
          height: 350,
          child: Image.asset("img/splash.png"),
        ),
      )
    );
  }
}