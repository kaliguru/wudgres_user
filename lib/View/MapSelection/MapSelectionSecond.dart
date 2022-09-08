import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

class MapSelectionSecond extends StatefulWidget {
  const MapSelectionSecond({Key? key}) : super(key: key);

  @override
  State<MapSelectionSecond> createState() => _MapSelectionSecondState();
}

class _MapSelectionSecondState extends State<MapSelectionSecond> {

  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller)
  {
    setState(() {
      _markers.add(
        Marker(markerId: MarkerId("id-1"),position:LatLng(13.098740, 77.573959) )
      );
    });

  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: HexColor("#BC8363",),
    body: Container(

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(22),topRight: Radius.circular(22))
      ),
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/7),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20,),
            // Align(
            //   alignment: Alignment.centerLeft,
            //   child: Container(
            //     margin: EdgeInsets.only(left: 10),
            //     width: MediaQuery.of(context).size.width/2,
            //     decoration: BoxDecoration(
            //       color:  HexColor("#BC8363",),
            //       borderRadius: BorderRadius.circular(20)
            //     ),
            //     child: Center(
            //       child: ListTile(
            //         // leading: Icon(CupertinoIcons.arrow_left,size: 30,color: Colors.white,),
            //         title: Text("Delivery To",style: TextStyle(fontSize: 20,color: Colors.white,fontFamily: 'GilroyMedium'),),
            //       ),
            //     ),
            //   )
            // ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2,
              color: Colors.transparent,
              child: GoogleMap(
                onMapCreated: _onMapCreated,
                markers: _markers,
                initialCameraPosition: CameraPosition(
                  target: LatLng(13.098740, 77.573959),
                zoom: 15,

              ),




              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                boxShadow: [new BoxShadow(
                  color: Colors.black,
                  blurRadius: 22.0,
                ),],
                borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                    child: ListTile(
                      title: Text("Home",style: TextStyle(fontFamily: 'GilroyMedium',color: Colors.black,fontSize: 20),),
                      leading: Icon(CupertinoIcons.home,size: 25,color: Colors.black,),
                      subtitle: Text("posi"),
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
                          color: HexColor("#BC8363",),
                          borderRadius: BorderRadius.circular(30 )
                      ),
                      width: MediaQuery.of(context).size.width/1.2,
                      height: 80,
                      child: Center(
                        child: ListTile(
                          leading: Icon(CupertinoIcons.location,size: 30,color: Colors.white,),
                          title: Text('Delivery To Current Location',style: TextStyle(fontSize: 15 ,fontFamily: 'GilroyMedium',color: Colors.white),),
                        ),
                      ),

                    ),
                  )

                ],
              ),

            ),



          ],
        ),
      ),

    ),

    )
    );
  }
}
