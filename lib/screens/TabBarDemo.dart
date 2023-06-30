import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabBarDemo extends StatefulWidget {
  const TabBarDemo({Key? key}) : super(key: key);

  @override
  State<TabBarDemo> createState() => _TabBarDemoState();
}

class _TabBarDemoState extends State<TabBarDemo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: TabBar(
            tabs: [
              Icon(Icons.abc),
              Icon(Icons.usb),

            ],
          ),
        ),
        body: TabBarView(
          children: [
            Text("ABC SELECTED"),
            Text("USB SELECTED"),
          ],
        ),

      ),


    );
  }
}
