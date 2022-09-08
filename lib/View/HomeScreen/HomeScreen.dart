import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wudgres_main/View/CartScreen/CartScreen.dart';
import 'package:wudgres_main/View/HomeScreen/MainScreen.dart';
import 'package:wudgres_main/View/MoreScreen/MoreScreen.dart';
import 'package:wudgres_main/View/WishListScreen/WIshListScreen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int currentIndex = 0;
  final screens =
  [
    MainScreen(),
    CartScreen(),
    WishListScreen(),
    MoreScreen()

  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: IndexedStack(
          index: currentIndex,
          children: screens,
        ),
        
        bottomNavigationBar: BottomNavigationBar(

          currentIndex: currentIndex,
            onTap: (index) => setState(() => currentIndex = index),
            items: [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home,color: Colors.white,),
            label: 'Home',
            backgroundColor: HexColor("#BC8363",)
          ),
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.cart,color: Colors.white,),
                label: 'Cart',
                  backgroundColor: HexColor("#BC8363",)

              ),
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.heart,color: Colors.white,),
                label: 'Wishlist',
                  backgroundColor: HexColor("#BC8363",)

              ),
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.line_horizontal_3,color: Colors.white,),
                label: 'More',
                backgroundColor: HexColor("#BC8363",)
              )
        ]),

      ),
    );
  }
}
