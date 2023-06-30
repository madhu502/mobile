import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/models/ProductModel.dart';
import 'package:my_app/repositories/ProductRepository.dart';

class UpdateScreen extends StatefulWidget {
  const UpdateScreen({Key? key}) : super(key: key);

  @override
  State<UpdateScreen> createState() => _UpdateScreenState();
}

class _UpdateScreenState extends State<UpdateScreen> {

  Future <void> updateData() async{
    try{
      final data = ProductModel(
          name: _name.text,
          price:double.parse(_price.text)
      );


      //call repo
      await ProductRepository().updateProduct(id.toString(), data);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Data saved")));

    }
    catch(e){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
    }

  }
  TextEditingController _name = TextEditingController();
  TextEditingController _price = TextEditingController();


  String? id;

  void fillData(String id) async{
    try{
      final response =await ProductRepository().getOneProduct(id);
      if(response!= null){
        _name.text=response.name.toString();
        _price.text=response.price.toString();
      }

    }catch(e){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
    }

  }



  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final args =ModalRoute.of(context)?.settings.arguments;
      if(args !=null){
        setState(() {
          id=args.toString();
        });
        fillData(args.toString());
      }
    });
    super.initState();
  }

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
            updateData();
          }, child: Text("Save"))
        ],
      ),
    );
  }
}
