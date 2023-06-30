import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/models/ProductModel.dart';
import 'package:my_app/repositories/ProductRepository.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({Key? key}) : super(key: key);

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {

  Future <void> saveData() async{
    try{
      final data = ProductModel(
          name: _name.text,
          price :double.parse(_price.text)

      );
      //call repo

      await ProductRepository().createProduct(data);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Data saved")));

    }
    catch(e){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
    }

  }
  TextEditingController _name = TextEditingController();
  TextEditingController _price = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Product"),
      ),

      body: Column(
        children: [
          TextFormField(controller: _name,),
          TextFormField(controller: _price,),
          ElevatedButton(onPressed: (){
            saveData();
          }, child: Text("Save"))
        ],
      ),
    );
  }
}
