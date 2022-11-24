import 'package:flutter/material.dart';
import 'package:ui_17/page/Cuvred_Navigaftion_Bar.dart';
import 'package:ui_17/page/Screens/ProfilePage.dart';

class HomePagee extends StatefulWidget {
  const HomePagee({Key? key}) : super(key: key);

  @override
  _HomePageeState createState() => _HomePageeState();
}

class _HomePageeState extends State<HomePagee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: Drawer(
      //   child: Container(
      //     color: Colors.deepOrangeAccent,
      //     width: 400,
      //   ),
      // ),
     // appBar: AppBar(title: const Text("Home Page"),),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
          //Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
            setState(() {
              final nvstate=nvKey.currentState;
              nvstate!.setPage(3);

            });
          },
          child: Text("got screem 4"),
        ),
      ),
    );
  }
}
