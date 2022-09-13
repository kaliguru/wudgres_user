import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:wudgres_main/Util/imageConstrants.dart';
import 'package:wudgres_main/View/Auth/Sucsess_Screen/SucsessScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:wudgres_main/services/auth_service.dart';

import '../LoginScreen/LoginScreen.dart';

class RegesterScreen extends StatefulWidget {
  const RegesterScreen({Key? key}) : super(key: key);

  @override
  State<RegesterScreen> createState() => _RegesterScreenState();
}

class _RegesterScreenState extends State<RegesterScreen> {
  TextEditingController _email = TextEditingController();
  TextEditingController _pass = TextEditingController();
  TextEditingController _phone = TextEditingController();
  TextEditingController _name = TextEditingController();

  void dispose() {
    super.dispose();
    _email.dispose();
    _pass.dispose();
  }

  singUp() {
    AuthService().signUp(
      email: _email.text,
      password: _pass.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/images/Tree.png"),
              fit: BoxFit.contain,
              colorFilter: new ColorFilter.mode(
                  Colors.white.withOpacity(0.2), BlendMode.dstATop),
            )),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 9,
                  ),
                  // Image.asset("assets/images/logo_Png.png",width: 200,height: 200,),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(
                          CupertinoIcons.arrow_left_circle_fill,
                          color: Colors.black,
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Create Your Account",
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.black,
                            fontSize: 30),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // Image.asset(ImageConstrants.APPLOGOPNG,width: 300,height: 300,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: TextFormField(
                        controller: _name,
                        obscureText: false,
                        decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.black),
                            labelStyle: TextStyle(color: Colors.black),
                            hintText: 'Name',
                            label: Text("Name"),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            prefixIcon: Icon(CupertinoIcons.person)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: TextFormField(
                        controller: _email,
                        decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.black),
                            labelStyle: TextStyle(color: Colors.black),
                            label: Text("Email"),
                            hintText: 'Email',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            prefixIcon: Icon(CupertinoIcons.mail)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: TextFormField(
                        controller: _phone,
                        keyboardType: TextInputType.number,
                        maxLength: 10,
                        decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.black),
                            hintText: 'Phone Number',
                            labelStyle: TextStyle(color: Colors.black),
                            label: Text("Phone Number"),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            prefixIcon: Icon(CupertinoIcons.phone_down_circle)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: TextFormField(
                        controller: _pass,
                        obscureText: true,
                        decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.black),
                            hintText: '*********',
                            labelStyle: TextStyle(color: Colors.black),
                            label: Text("Password"),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            prefixIcon: Icon(CupertinoIcons.shield)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        singUp();
                        Navigator.push(context,
                            MaterialPageRoute(builder: (c) => LoginScreen()));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.brown,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text(
                            "Create Account",
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.white,
                                fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Or Regester With Social Accounts",
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                  // Divider(height: 1,color: Colors.grey,thickness: 1.0,),
                  Row(children: <Widget>[
                    Expanded(
                        child: Divider(
                      thickness: 2,
                    )),
                    Icon(CupertinoIcons.flame),
                    Expanded(
                        child: Divider(
                      thickness: 2,
                    )),
                  ]), //Divider
                  // Text("")
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.black38, shape: BoxShape.circle),
                        child: Image.asset(
                          Image_gifs.FACEBOOK_GIFS,
                          width: 40,
                          height: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.black38, shape: BoxShape.circle),
                        child: Image.asset(
                          Image_gifs.TWITTER,
                          width: 40,
                          height: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.black38, shape: BoxShape.circle),
                        child: Image.asset(
                          Image_gifs.GOOGLE_GIFS,
                          width: 40,
                          height: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.black38, shape: BoxShape.circle),
                          child: Image.asset(
                            Image_gifs.APPLE_GIFS,
                            width: 40,
                            height: 40,
                            fit: BoxFit.cover,
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
