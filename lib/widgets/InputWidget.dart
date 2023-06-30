import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputWidget extends StatefulWidget {
  const InputWidget({Key? key}) : super(key: key);

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  String text ="";
  TextEditingController inputController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          key: Key("input-field"),
          controller: inputController,
        ),
        Text("Output: "+ text),
        ElevatedButton(
          key: Key("button"),
            onPressed: (){
          setState(() {
            text =inputController.text;
          });
        }, child: Text("Push"))
      ],
    );
  }
}
