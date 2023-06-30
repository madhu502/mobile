import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Page3.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text("Page2"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Page 2"),
            ElevatedButton(onPressed: (){
              Navigator.of(context).pop();
            }, child: Text("Go back")),

            ElevatedButton(onPressed: (){
              // Navigator.of(context).pushReplacement(
              //   MaterialPageRoute(builder: (context)=> Page3())
              // );

              Navigator.of(context).pushReplacementNamed("/page3");
            }, child: Text("GO Page 3"))
          ],

        ),
      ),
    );
  }
}
