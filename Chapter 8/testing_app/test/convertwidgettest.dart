import 'package:testing_app/main.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
void main(){
  testWidgets('Test widget', (tester) async{
    await tester.pumpWidget(HomeScreen());
    var textField=find.byType(TextField);
    expect(textField, findsOneWidget);
    await tester.enterText(textField, "1");
    expect(find.text('1'), findsOneWidget);
    var button=find.byType(RaisedButton);
    expect(button, findsOneWidget);
    await tester.tap(button);
    await tester.pump();
    expect(find.text("0.0254"),findsOneWidget);
  });
}