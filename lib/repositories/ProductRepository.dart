import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:my_app/models/ProductModel.dart';
import 'package:my_app/services/FirebaseService.dart';

class ProductRepository{
  final instance =FirebaseService.db.collection("products").withConverter(
      fromFirestore: (snapshot, _){
        return ProductModel.fromFirebaseSnapshot(snapshot);
      }, toFirestore: (model, _)=>model.toJson());



  Future<dynamic> createProduct(ProductModel data)async{
    try{
      final result =await instance.add(data);
      return result;
    }catch(e){
      print(e);
    }
  }

  Future<List<QueryDocumentSnapshot<ProductModel>>> fetchAllProducts()async{
    try{
      final result =(await instance.get()).docs;
      return result;
    }catch(e){
      return [];

    }
  }

  Future<void> deleteProduct(String id)async{
    try{
      await instance.doc(id).delete();
    }catch(e){
      print(e);
      rethrow;
    }
  }

  Future<ProductModel?> getOneProduct(String id)async{
    try{
      final product = await instance.doc(id).get();
      return product.data();
    }catch(e){
      print(e);
      rethrow;
    }
  }

  Future<dynamic> updateProduct(String id, ProductModel data)async{
    try{
      await instance.doc(id).set(data);

    }catch(e){

      rethrow;
    }
  }




}
