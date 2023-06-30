import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/ProductModel.dart';
import '../repositories/ProductRepository.dart';

class ProductViewModel with ChangeNotifier{
  List<QueryDocumentSnapshot<ProductModel>> _productData =[];

  List<QueryDocumentSnapshot<ProductModel>> get productData =>_productData;


  Future<void> fetchData()async{
    try{
      final response =await ProductRepository().fetchAllProducts();
      _productData= response;
      notifyListeners();
    }catch(e){
      print(e);
    }

  }
}