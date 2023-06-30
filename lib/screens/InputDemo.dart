import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputDemo extends StatefulWidget {
  const InputDemo({Key? key}) : super(key: key);

  @override
  State<InputDemo> createState() => _InputDemoState();
}

class _InputDemoState extends State<InputDemo> {
  String result ="";

  TextEditingController _input1 =new TextEditingController();
  TextEditingController _input2 =new TextEditingController(text: "1");

  final formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Text("Output"),
              Text(result, style: TextStyle(fontSize: 30),),

              TextFormField(
                controller: _input1,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.deepPurpleAccent.withOpacity(0.2),
                  label: Text("Input 1"),
                ),
              ),

              TextFormField(
                controller: _input2,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.deepPurpleAccent.withOpacity(0.2),
                  label: Text("Input 2"),
                ),

                validator:( String? val){
                  if (val==null || val==""){
                    return "Please enter input values";
                  }
                  return null;
                },
              ),

              Row(
                children: [
                  ElevatedButton(onPressed: (){
                    result=_input1.text + _input2.text; //This does not change UI
                    setState(() {
                      result=(num.parse(_input1.text) + num.parse(_input2.text)).toString(); //This  change UI
                    });
                    bool validated =formKey.currentState!.validate();
                  }, child: Text("+")),

                  ElevatedButton(onPressed: (){
                    bool validated =formKey.currentState!.validate();
                    if(validated){
                      //form is valid
                      //you can do logic here

                    }
                    }, child: Text("-")),
                  ElevatedButton(onPressed: (){}, child: Text("*")),
                  ElevatedButton(onPressed: (){}, child: Text("/")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
