import 'package:flutter_test/flutter_test.dart';

int addTwoNumber(int x, int y){
  return x+y;
}

void main(){
  test("TEst for add two numbers", (){
    final actual =addTwoNumber(10, 20);
    final excepted =30;

    expect(actual, excepted);

  });

  test("Test for data type", () {
    final result =addTwoNumber(10, 20);
    final actual =result.runtimeType;
    final excepted =int;
    expect(actual, excepted);

  });



}