import 'package:flutter/material.dart';
import 'package:wudgres_main/View/Auth/RegesterScreen/RegesterScreen.dart';
import 'package:wudgres_main/View/HomeScreen/HomeScreen.dart';
import 'package:wudgres_main/View/MapSelection/MapSelectionFirst.dart';
import 'View/MapSelection/MapSelectionSecond.dart';
import 'View/SplashScreen/SplashScreen.dart';

void main ()=>runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wudgres',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      theme: ThemeData(
       primaryColor: Colors.grey,
        primarySwatch: Colors.brown
      ),
    );
  }
}
