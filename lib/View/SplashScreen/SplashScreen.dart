import 'dart:async';

import 'package:flutter/material.dart';
import 'package:wudgres_main/services/auth_service.dart';

import '../../Util/imageConstrants.dart';
import '../OnBoarding/1_OnBoarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  setTimer() {
    Timer(Duration(seconds: 3), () async {
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (c) => OnBoarding1()), (route) => false);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 100,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    ImageConstrants.APPLOGO,
                    fit: BoxFit.cover,
                  ),
                  width: MediaQuery.of(context).size.width / 2,
                  height: MediaQuery.of(context).size.height / 5,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                // color: Colors.grey,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3,
                child: Image.asset(
                  ImageConstrants.BOOLIMG,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
