
 import 'package:flutter/material.dart';
 import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ui_17/page/Screens/FavoritePage.dart';
import 'package:ui_17/page/Screens/ProfilePage.dart';
import 'package:ui_17/page/Screens/SearchPage.dart';
import 'Screens/HomePage.dart';
 int index=0;
 final nvKey=GlobalKey<CurvedNavigationBarState>();
class Cuvred_Navigaftion_Bar extends StatefulWidget {
   const Cuvred_Navigaftion_Bar({Key? key}) : super(key: key);

   @override
   _Cuvred_Navigaftion_BarState createState() => _Cuvred_Navigaftion_BarState();
 }

 class _Cuvred_Navigaftion_BarState extends State<Cuvred_Navigaftion_Bar> {

  final items=<Widget>[
    Icon(Icons.home),
    Icon(Icons.search),
    Icon(Icons.favorite),

   // Icon(Icons.person_off_outlined),
  ];
   final Screen=<Widget>[
     HomePagee(),
     SearchPage(),
     FavoritePage(),
    // ProfilePage()

   ];

   @override
   Widget build(BuildContext context) {
     return SafeArea(

       child: Scaffold(
         extendBody: true,
         appBar: AppBar(title: index==0?Text("Home Page"):index==1?Text("Search Page"):index==2?Text("favorite Page"):Text("Profile Page"),),
         drawer: Drawer(
           child: Container(
             color: Colors.deepOrangeAccent,
             width: 400,
           ),
         ),
         body: Screen[index],
         backgroundColor: Colors.blue,
         //body: Container(),T
         bottomNavigationBar: Theme(
           data: ThemeData(
             iconTheme: IconThemeData(color: Colors.white)
           ),
           child: CurvedNavigationBar(
             key: nvKey,
             index: index,

             items: items,
             onTap: (inde)=>setState(() {
            index=inde;
             }),
             height: 60,
             color: Colors.grey,
             backgroundColor: Colors.transparent,
             buttonBackgroundColor: Colors.deepOrangeAccent,
             animationDuration: Duration(milliseconds: 300),

           ),
         ),
       ),
     );
   }
 }
