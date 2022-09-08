import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: HexColor("#BC8363",),
        body: Container(

          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/8),
          decoration: BoxDecoration(
            color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(22),topRight: Radius.circular(22))
          ),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: ()
                  {
                    showSearch(context: context, delegate: MySearchDelegate());
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black12,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 80,

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 10,),
                        Icon(CupertinoIcons.search),
                        SizedBox(width: 10,),
                        Text("Search Your Perfect Doors",style: TextStyle(fontSize: 18,fontFamily: 'GilroyMedium'),)
                      ],
                    ),

                  ),
                ),
              ),
              //Search
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Popular Products",style: TextStyle(fontFamily: 'GilroyMedium',fontSize: 20,color: Colors.black),),
                ),
              ),
              //popular products text
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  // color: Colors.black38,
                  child: Expanded(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[

                      ],
                    ),
                  ),
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}
/*
Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle
                      ),
                    )
*/
class MySearchDelegate extends SearchDelegate
{
  @override
  Widget? buildLeading(BuildContext context) => IconButton(onPressed: ()=>close(context, null),
       icon: Icon(CupertinoIcons.back));
  @override
  List<Widget>? buildActions(BuildContext context) => [
    IconButton(onPressed: (){
      if(query.isEmpty)
      {
        close(context, null);
      }else
      {
        query = "";
      }
    },
        icon: Icon(CupertinoIcons.clear_circled))
  ];
  @override
  Widget buildResults(BuildContext context) => Container();
  @override
  Widget buildSuggestions(BuildContext context) => Container();


}
