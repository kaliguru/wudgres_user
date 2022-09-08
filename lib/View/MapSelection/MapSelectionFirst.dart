import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wudgres_main/Util/imageConstrants.dart';
import 'package:wudgres_main/View/HomeScreen/HomeScreen.dart';
import 'package:wudgres_main/View/MapSelection/MapSelectionSecond.dart';

class MapSelectionFirst extends StatefulWidget {
  const MapSelectionFirst({Key? key}) : super(key: key);

  @override
  State<MapSelectionFirst> createState() => _MapSelectionFirstState();
}

class _MapSelectionFirstState extends State<MapSelectionFirst> {

  var customerName = "Null??";

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: HexColor("#BC8363"),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 50,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (c)=>HomeScreen()));
                      }, child: Text("Skip >",style: TextStyle(fontSize: 20,color: Colors.white),))
                    ],
                  ),
                ),//skip button
                SizedBox(height: 50,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle

                  ),
                  child: Center(
                    child: Image.asset(ImageConstrants.APPLOGOPNG,width: 200,height: 200,),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  child: Center
                    (
                    child: Text("Welcome",style: TextStyle(fontSize: 50 ,fontFamily: 'GilroyMedium',color: Colors.white),),
                  )

                ),
                Container(
                    child: Center
                      (
                      child: Text('${customerName}',style: TextStyle(fontSize: 50 ,fontFamily: 'GilroyMedium',color: Colors.white),),
                    )
                ),
                Container(
                    child: Center
                      (
                      child: Text('unlock the world of regular',style: TextStyle(fontSize: 15 ,fontFamily: 'GilroyMediumItalic',color: Colors.white),),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                      child: Center
                        (
                        child: Text('and well managed product by setting up your delivery',style: TextStyle(fontSize: 15 ,fontFamily: 'GilroyMediumItalic',color: Colors.white),),
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10,0,10,0),
                  child: Container(
                      child: Center
                        (
                        child: Text('setting up your delivery',style: TextStyle(fontSize: 15 ,fontFamily: 'GilroyMediumItalic',color: Colors.white),),
                      )
                  ),
                ),
                SizedBox(height: 50,),
                Align(
                  alignment: Alignment.center,
                  child: Text("Select Location",style: TextStyle(fontSize: 20 ,fontFamily: 'GilroyMedium',color: Colors.white)),
                ),
               SizedBox(height: 20,),
                InkWell(
                  onTap: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (c)=>MapSelectionSecond()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                      borderRadius: BorderRadius.circular(30 )
                    ),
                    width: MediaQuery.of(context).size.width/1.2,
                    height: 80,
                    child: Center(
                      child: ListTile(
                        leading: Icon(CupertinoIcons.search_circle,size: 30,color: Colors.black,),
                        title: Text('Locate Me',style: TextStyle(fontSize: 20 ,fontFamily: 'GilroyMedium',color: Colors.black),),
                      ),
                    ),

                  ),
                ),
                SizedBox(height: 20,),
                InkWell(
                  onTap: ()
                  {
                    print("object");
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30 )
                    ),
                    width: MediaQuery.of(context).size.width/1.2,
                    height: 80,
                    child: Center(
                      child: ListTile(
                        leading: Icon(CupertinoIcons.location,size: 30,color: Colors.black,),
                        title: Text('Provide Delivery Location',style: TextStyle(fontSize: 20 ,fontFamily: 'GilroyMedium',color: Colors.black),),
                      ),
                    ),

                  ),
                )
              ],
            ),
          ) ,
        ),
      ),
    );
  }
}
