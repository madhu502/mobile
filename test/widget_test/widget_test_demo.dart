import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_app/widgets/InputWidget.dart';
import 'package:my_app/widgets/MakeTextWidget.dart';


void main(){
  testWidgets("Test text widget",(widgetTester) async{
    await widgetTester.pumpWidget(
        MaterialApp(
          home: Material(
            child: MakeTextWidget(text:"100"),
          ),
        )
    );
    final textFinder =find.text("Rs. 100");
    expect(textFinder, findsOneWidget);
  });

  testWidgets("Input form text ", (widgetTester) async{
    await widgetTester.pumpWidget(
      MaterialApp(
        home: Material(
          child: InputWidget(

          ),
        ),
      )
    );
    //event1
    // await widgetTester.enterText(find.byType(TextFormField),"Hi");
    await widgetTester.enterText(find.byKey(Key("input-field")), "Hi");

    //event 2
    // await widgetTester.tap(find.byType(ElevatedButton));
    await widgetTester.tap(find.byKey(Key("button")));

    //rebuild
    await widgetTester.pump();
    final finder = find.text("Output: Hi");

    expect(finder, findsOneWidget);

  });
}