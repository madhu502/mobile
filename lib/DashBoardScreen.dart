
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_app/repositories/ProductRepository.dart';
import 'package:my_app/viewmodels/product_viewmodel.dart';
import 'package:provider/provider.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;


  Future<void> fetchDataFromViewmodel()async{
    try{
      final response =await productViewModel.fetchData();

    }catch(e){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
    }

  }
  late ProductViewModel productViewModel;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      productViewModel=Provider.of<ProductViewModel>(context,listen: false);
      fetchDataFromViewmodel();
    });

    super.initState();
  }

  void signOut() async {
    try {
      await _auth.signOut();
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Logged out")));

      Navigator.of(context).pop();

    } on FirebaseAuthException catch (err) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(err.message.toString()),
        backgroundColor: Colors.red,
      ));
    }
  }
  Future<void> deleteProduct(String id) async{
    try{
      await ProductRepository().deleteProduct(id);
      fetchDataFromViewmodel();
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Deleted")));
    }catch(e){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));

    }
  }
  void _showDialog( String id){
    showDialog(context: context, builder: (context)=>
        AlertDialog(
          title: Text("Are you sure yount want to delete?"),
          actions: [
            ElevatedButton(onPressed: (){
              Navigator.of(context).pop();

            },child:Text("Cancel")),
            ElevatedButton(onPressed: (){
              deleteProduct(id);
            }
                , child: Text("Delete")),
          ],
        ));
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<ProductViewModel>(
      builder: (context, productVM,child) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              Navigator.of(context).pushNamed("/add-screen");
            },
            child: Icon(Icons.add),
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        fetchDataFromViewmodel();
                      },
                      child: Text("Refresh")),

                  ElevatedButton(
                      onPressed: () {
                        signOut();
                      },
                      child: Text("Sign Out")),
                  ...productVM.productData.map((e) => Card(
                    child: Column(
                      children: [
                        Text(e.data().name.toString()),
                        Text(e.data().price.toString()),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(onPressed: (){
                              Navigator.of(context).pushNamed("/update-screen",arguments: e.id);

                            }, icon: Icon(Icons.edit)),
                            IconButton(onPressed: (){
                              _showDialog(e.id);
                            }, icon: Icon(Icons.delete)),

                          ],
                        )
                      ],
                    ),
                  ),
                  ),
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}