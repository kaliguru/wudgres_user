import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:wudgres_main/services/auth_service.dart';
import 'package:wudgres_main/services/auth_service.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: Column(
              children: [
                ClipOval(
                    child: Image.network(
                        FirebaseAuth.instance.currentUser!.photoURL!,
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover)),
                Text(FirebaseAuth.instance.currentUser!.displayName!),
                Text(FirebaseAuth.instance.currentUser!.email!),
              ],
            ),
          )
        ],
      ),
    );
  }
}
