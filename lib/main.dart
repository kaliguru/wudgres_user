import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:wudgres_main/View/SplashScreen/SplashScreen.dart';
import 'package:wudgres_main/services/auth_service.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

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
      theme: ThemeData(primaryColor: Colors.grey, primarySwatch: Colors.brown),
    );
  }
}
