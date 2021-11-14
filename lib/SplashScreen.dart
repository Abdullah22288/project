import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:project/LoginPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), ()=>
        Navigator.pushAndRemoveUntil(
            context, MaterialPageRoute(builder: (context)=>LoginPage()), (route) => false));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Image.asset("assets/33.jpg"),
            SizedBox(height: 30,),
            SpinKitFadingCube(color: Colors.red,),
          ],
        ),
      ),
    );
  }
}
