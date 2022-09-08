import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wudgres_main/Util/imageConstrants.dart';
import 'package:wudgres_main/View/OnBoarding/2_onBoarding.dart';

class OnBoarding1 extends StatefulWidget {
  const OnBoarding1({Key? key}) : super(key: key);

  @override
  State<OnBoarding1> createState() => _OnBoarding1State();
}

class _OnBoarding1State extends State<OnBoarding1> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: Colors.white ,
        body: Container(
          width: MediaQuery.of(context).size.width,
          height:MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2,
                color: Colors.black,
                child: Image.asset(ImageConstrants.ONBOARD1,fit: BoxFit.cover,)
              ),
              SizedBox(height: 20,),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Give us a chance, We",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "We will provide According to you ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height/5,),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 5,
                      height: 5,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1,color: Colors.brown),

                        shape: BoxShape.circle
                      ),
                    ),
                    SizedBox(width: 3,),
                    Container(
                      width: 5,
                      height: 5,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle
                      ),
                    ),
                    SizedBox(width: 3,),
                    Container(
                      width: 5,
                      height: 5,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        bottomSheet: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (c)=>OnBoarding2()));
          },
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 60,
            color: Colors.brown,
            child: Center(
              child: Icon(CupertinoIcons.arrow_right,color: Colors.white,),
            ),
          ),
        ),
      ),
    );
  }
}
