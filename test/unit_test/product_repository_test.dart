
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_app/models/ProductModel.dart';
import 'package:my_app/repositories/ProductRepository.dart';
import 'package:my_app/services/FirebaseService.dart';

Future <void> main() async{
  FirebaseService.db =FakeFirebaseFirestore();

  final ProductRepository productRepository =ProductRepository();

  test("Test to create product", () async {

    final response = await productRepository.createProduct(ProductModel(
      name: "Test Product",
      price: 154.21
    ));

    final data = await response.get();
    final actual = data.data().name.toString();
    final expected ="Test Product";
    expect(actual, expected);

  } );

  test("Test to get one Product", () async{
    final response = await productRepository.getOneProduct("test");
    final actual =response;
    final expected = null;
    expect(actual, expected);
  });








}