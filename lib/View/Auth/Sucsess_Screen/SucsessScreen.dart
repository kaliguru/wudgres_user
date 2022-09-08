import 'dart:async';

import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:wudgres_main/Util/imageConstrants.dart';
import 'package:wudgres_main/View/Auth/LoginScreen/LoginScreen.dart';

import '../../HomeScreen/HomeScreen.dart';

class SucessScreen extends StatefulWidget {
  const SucessScreen({Key? key}) : super(key: key);

  @override
  State<SucessScreen> createState() => _SucessScreenState();
}

class _SucessScreenState extends State<SucessScreen> {

  ();
  // }

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
              SizedBox(height: MediaQuery.of(context).size.height/8,),
              Image.asset(Image_gifs.SUCSESS_GIF),
              SizedBox(height: 100,),
              Text("Hey!",style: TextStyle(fontStyle: FontStyle.italic,fontSize: 20,fontFamily: 'GilroyMedium'),),
              Text("Thank You For Choosing Us",style: TextStyle(fontStyle: FontStyle.italic,fontSize: 20,fontFamily: 'GilroyMedium'),),
              SizedBox(height: 10,),
              Text("Hello User You Are Registred Successfully ",style: TextStyle(fontSize: 15,fontFamily: 'GilroyMedium'),),
              Text("and now you can login",style: TextStyle(fontSize: 15,fontFamily: 'GilroyMedium'),),
            ]
          ),
        ),
        bottomSheet: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (c)=>LoginScreen()));
            },
            child: Container(
              margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.width/7),
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.brown,
                borderRadius: BorderRadius.circular(20),

              ),
              child: Center(
                child: Text("Login",style: TextStyle(fontFamily: 'GloryBlack',color: Colors.white,fontStyle: FontStyle.italic,fontSize: 20),),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
