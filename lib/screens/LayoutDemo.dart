import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LayoutDemo extends StatefulWidget {
  const LayoutDemo({Key? key}) : super(key: key);

  @override
  State<LayoutDemo> createState() => _LayoutDemoState();
}
class _LayoutDemoState extends State<LayoutDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image.network(
                height:100,
                width:100,
                "https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Instagram-Icon.png/769px-Instagram-Icon.png?fbclid=IwAR04eXv0wMq7mF2xnvbUT6sVq3NOfDo-ni6QEBlpNzjhOEyUb2esT8dmwqo" ),
            Container(
                child: Column(children: [
                    Text("Text 1"),
                    Text("Text 2"),
                  ],
                ),
              )
            ],
          ),
          Row(
            children: [
              Image.network(
              height:100,
              width:100,
              "https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Instagram-Icon.png/769px-Instagram-Icon.png?fbclid=IwAR04eXv0wMq7mF2xnvbUT6sVq3NOfDo-ni6QEBlpNzjhOEyUb2esT8dmwqo" ),
              Image.network(
                  height:100,
                  width:100,
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Instagram-Icon.png/769px-Instagram-Icon.png?fbclid=IwAR04eXv0wMq7mF2xnvbUT6sVq3NOfDo-ni6QEBlpNzjhOEyUb2esT8dmwqo" ),
              Image.network(
                  height:100,
                  width:100,
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Instagram-Icon.png/769px-Instagram-Icon.png?fbclid=IwAR04eXv0wMq7mF2xnvbUT6sVq3NOfDo-ni6QEBlpNzjhOEyUb2esT8dmwqo" ),
            ],
          )
        ],
      ),
    );
  }
}
