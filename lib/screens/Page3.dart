import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 3"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Page3"),
            ElevatedButton(onPressed: (){
              Navigator.of(context).pop();
            }, child: Text("Go Back"))
          ],
        ),
      ),
    );
  }
}
