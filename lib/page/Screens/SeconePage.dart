import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'SearchPage.dart';

class SeconePage extends StatefulWidget {
  const SeconePage({Key? key}) : super(key: key);

  @override
  _SeconePageState createState() => _SeconePageState();
}

class _SeconePageState extends State<SeconePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: (){
                final state=scfoldKey.currentState;
               setState(() {
                 index=0;
               });
              },
              child: const Text("goto first page"),
            ),
          ),
          Center(

            child: Text("Seconed Screem ",style: TextStyle(fontSize: 30),),
          ),
        ],
      ),
    );
  }
}
