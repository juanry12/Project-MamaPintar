import 'dart:async';

import 'package:mamapintarcare/utility/colorResources.dart';
import 'package:mamapintarcare/view/views/onBorad/doctor_onboarding_screen.dart';
import 'package:flutter/material.dart';

class DoctorSplashScreen extends StatefulWidget {
  @override
  _DoctorSplashScreenState createState() => _DoctorSplashScreenState();
}

class _DoctorSplashScreenState extends State<DoctorSplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => DoctorOnBoardingScreen(
                indicatorColor: ColorResources.COLOR_GREY,
                selectedIndicatorColor: ColorResources.COLOR_PRIMARY))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: ColorResources.COLOR_WHITE,
      body: Center(
        child: Container(
            width: double.infinity,
            height: double.infinity,
            padding: EdgeInsets.all(50),
            color: Colors.white,
            child: Image.asset(
              'assets/images1/mamapintar_berwarna.png',
            )),
      ),
    );
  }
}
