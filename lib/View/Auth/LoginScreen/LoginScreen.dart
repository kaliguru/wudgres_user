import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:wudgres_main/Util/imageConstrants.dart';
import 'package:wudgres_main/View/MapSelection/MapSelectionFirst.dart';

import '../Sucsess_Screen/SucsessScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: Colors.white,

        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/Tree.png"),fit: BoxFit.contain,colorFilter: new ColorFilter.mode(Colors.white.withOpacity(0.2), BlendMode.dstATop),)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[

              SizedBox(height: MediaQuery.of(context).size.height/9,),
              // Image.asset("assets/images/logo_Png.png",width: 200,height: 200,),
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(CupertinoIcons.arrow_left_circle_fill,color: Colors.black,size: 40,),
                  ),
                ),
              ),
              SizedBox(height: 20,),

              Container(
                margin: EdgeInsets.only(left: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Login",style: TextStyle(fontFamily: 'GilroyMediumItalic',color: Colors.black,fontSize: 30),),
                ),
              ),//Login
              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Enter your information below or continue",style: TextStyle(fontFamily: 'GilroyMedium',color: Colors.black,fontSize: 15),),
                ),
              ),//Text
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("or continue with social media accounts",style: TextStyle(fontFamily: 'GilroyMedium',color: Colors.black,fontSize: 15),),
                ),
              ),//Text
              // Image.asset(ImageConstrants.APPLOGOPNG,width: 300,height: 300,),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.black,fontFamily: 'GilroyMedium'),
                        labelStyle: TextStyle(color: Colors.black,fontFamily: 'GilroyMedium'),
                        label: Text("Email"),
                        hintText: 'Email',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                        prefixIcon: Icon(CupertinoIcons.mail)
                    ),
                  ),
                ),
              ),//Email
              SizedBox(height: 5,),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.black,fontFamily: 'GilroyMedium'),
                        hintText: '*********',
                        labelStyle: TextStyle(color: Colors.black,fontFamily: 'GilroyMedium'),
                        label: Text("Password"),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                        prefixIcon: Icon(CupertinoIcons.shield)
                    ),
                  ),
                ),
              ),//Password
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (c)=>MapSelectionFirst())),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.brown ,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(
                      child: Text("Login",style: TextStyle(fontFamily: 'GilroyMedium',color: Colors.white,fontSize: 20),),
                    ),
                  ),
                ),
              ),//Login Button
              SizedBox(height: MediaQuery.of(context).size.height/6,),
              Text("Or Login With Social Accounts",style: TextStyle(fontFamily: 'GilroyMedium'),),
              // Divider(height: 1,color: Colors.grey,thickness: 1.0,),
              Row(
                  children: <Widget>[
                    Expanded(
                        child: Divider(thickness: 2,)
                    ),
                    Icon(CupertinoIcons.flame),
                    Expanded(
                        child: Divider(thickness: 2,)
                    ),
                  ]
              ),//Divider
              // Text("")
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 40,height: 40,
                    decoration: BoxDecoration(
                        color: Colors.black38,
                        shape: BoxShape.circle
                    ),
                    child: Image.asset(Image_gifs.FACEBOOK_GIFS,width: 40,height: 40,fit: BoxFit.cover,),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: 40,height: 40,
                    decoration: BoxDecoration(
                        color: Colors.black38,
                        shape: BoxShape.circle
                    ),
                    child: Image.asset(Image_gifs.TWITTER,width: 40,height: 40,fit: BoxFit.cover,),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: 40,height: 40,
                    decoration: BoxDecoration(
                        color: Colors.black38,
                        shape: BoxShape.circle
                    ),
                    child: Image.asset(Image_gifs.GOOGLE_GIFS,width: 40,height: 40,fit: BoxFit.cover,),
                  ),
                  SizedBox(width: 10,),
                  Container(
                      width: 40,height: 40,
                      decoration: BoxDecoration(
                          color: Colors.black38,
                          shape: BoxShape.circle
                      ),
                      child: Image.asset(Image_gifs.APPLE_GIFS,width: 40,height: 40,fit: BoxFit.cover,
                      ))

                ],
              )//Social Accounts

            ],
          ),
        ),
      ),
    );
  }
}
