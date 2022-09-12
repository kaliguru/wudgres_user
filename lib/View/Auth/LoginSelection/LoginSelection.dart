import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:wudgres_main/Util/imageConstrants.dart';
import 'package:wudgres_main/View/Auth/RegesterScreen/RegesterScreen.dart';

import '../../../services/auth_service.dart';
import '../LoginScreen/LoginScreen.dart';

class LoginSelection extends StatefulWidget {
  const LoginSelection({Key? key}) : super(key: key);

  @override
  State<LoginSelection> createState() => _LoginSelectionState();
}

class _LoginSelectionState extends State<LoginSelection> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 100,
              ),
              Image.asset(ImageConstrants.LOGINSELECTION),
              SizedBox(
                height: 20,
              ),
              Text(
                "Welcome To Our Store",
                style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "We will always give you the best product",
                style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
              ),
              Text(
                "helps you to make it more better",
                style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: GestureDetector(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (c) => LoginScreen())),
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.white,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (c) => RegesterScreen())),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.brown,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        "Regester",
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.white,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (c) => AuthService().handleAuthState()));
                },
                child: SizedBox(
                  child: Text("Login With google"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
