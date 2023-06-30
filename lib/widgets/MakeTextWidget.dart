import 'package:flutter/cupertino.dart';

class MakeTextWidget extends StatefulWidget {
  MakeTextWidget({Key?key ,required this.text}):super(key:key);
  String text="";


  @override
  State<MakeTextWidget> createState() => _MakeTeState();
}

class _MakeTeState extends State<MakeTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text("Rs. "+ widget.text);
  }
}
