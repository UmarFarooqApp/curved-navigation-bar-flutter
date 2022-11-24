import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_17/page/Screens/SearchPage.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Center(

            child: Text("Frist Screem ",style: TextStyle(fontSize: 30),),

          ),
    Center(
      child: ElevatedButton(
        onPressed: (){
           // final state=scfoldKey.currentState;
           // state!.
           setState(() {
             print("the index value is $index");
             index=1;
             print("after setstate the index value is $index");
           });
        },
        child: const Text("goto first page"),
      ),
    ),

        ],
      ),
    );
  }
 }
