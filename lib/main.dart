import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:wudgres_main/View/Auth/RegesterScreen/RegesterScreen.dart';
import 'package:wudgres_main/View/HomeScreen/HomeScreen.dart';
import 'package:wudgres_main/View/MapSelection/MapSelectionFirst.dart';
import 'package:wudgres_main/services/auth_service.dart';
import 'View/MapSelection/MapSelectionSecond.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'View/SplashScreen/SplashScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';

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
      home: AuthService().handleAuthState(),
      theme: ThemeData(primaryColor: Colors.grey, primarySwatch: Colors.brown),
    );
  }
}
