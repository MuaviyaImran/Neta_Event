// ignore_for_file: deprecated_member_use

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:neta_event/utils/route_names.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  }

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  static bool _isSet = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (!_isSet) {
      _setNextRoute(context);
      _isSet = true;
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/Vector.png'),
            SizedBox(
              height: 10,
            ),
            Image.asset('assets/Neta-event.png')
          ],
        ),
      ),
    );
  }

  void _setNextRoute(BuildContext c) {
    Timer(
      Duration(seconds: 5),
      () async {
        Navigator.pushReplacementNamed(c, RouteNames.wizardScreen);
      },
    );
  }
}
