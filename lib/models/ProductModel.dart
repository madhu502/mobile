// To parse this JSON data, do
//
//     final productModel = productModelFromJson(jsonString);

import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

ProductModel productModelFromJson(String str) => ProductModel.fromJson(json.decode(str));

String productModelToJson(ProductModel data) => json.encode(data.toJson());

class ProductModel {
  String? name;
  double? price;
  String? id;
  String ? imageUrl;
  String? imagePath;


  ProductModel({
    this.name,
    this.price,
    this.id,
    this.imageUrl,
    this.imagePath,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
    name: json["name"],
    price: json["price"]?.toDouble(),
    id: json["id"],
    imageUrl: json["imageUrl"],
    imagePath: json["imagePath"],
  );

  factory ProductModel.fromFirebaseSnapshot(DocumentSnapshot doc){
    final data =doc.data()as Map<String,dynamic>;
    data["id"]=doc.id;
    return ProductModel.fromJson(data);

  }

  Map<String, dynamic> toJson() => {
    "name": name,
    "price": price,
    "id": id,
    "imagePath": imagePath,
    "imageUrl": imageUrl,
  };
}
