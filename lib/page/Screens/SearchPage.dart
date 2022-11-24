import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'FristPage.dart';
import 'SeconePage.dart';
final scfoldKey=GlobalKey<ScaffoldState>();
int index=0;

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  final Screens=<Widget>[
    FirstPage(),
    SeconePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scfoldKey,
      //appBar: AppBar(title: const Text("Search Screen"),),
      body: index==0?fristPage():SecondPage(),
      //Screens[index],

      // Center(
      //   child: ElevatedButton(
      //     onPressed: (){
      //
      //     },
      //     child: const Text("goto first page"),
      //   ),
      // ),
    );
  }
  Widget fristPage(){
    return
      Container(
      child: Column(
        children: [
          Center(

            child: Text("frist screen ",style: TextStyle(fontSize: 30),),

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
              child: const Text("goto second  page"),
            ),
          ),

        ],
      ),
    );
  }
  /// second screen

  Widget SecondPage(){
    return
      Container(
        child: Column(
          children: [
            Center(

              child: Text("Secone screen ",style: TextStyle(fontSize: 30),),

            ),
            Center(
              child: ElevatedButton(
                onPressed: (){
                  // final state=scfoldKey.currentState;
                  // state!.
                  setState(() {
                    print("the index value is $index");
                    index=0;
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
