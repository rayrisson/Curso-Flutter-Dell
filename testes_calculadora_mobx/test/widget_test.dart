// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:testes_calculadora_mobx/main.dart';

void main() {
  testWidgets('Testa a realição das operações da calculadora', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(Calculadora());
    List<String> symbols = ['+', '-', '*', '/', '%'];

    for(int i = 0; i < 10; i++){
      expect(find.text(i.toString()), findsNWidgets(2));
    }

    for(final symbol in symbols){
      expect(find.text(symbol), findsOneWidget);
    }

    await tester.tap(find.text('2').first);
    await tester.tap(find.text('7').last);
    await tester.tap(find.text('+'));
    await tester.pump();

    expect(find.text('2'), findsNWidgets(3));
    expect(find.text('7'), findsNWidgets(3));
    expect(find.text('+'), findsNWidgets(2));

    await tester.tap(find.text('Calcular'));
    await tester.pump();

    expect(find.text('9.00'), findsNWidgets(1));

    await tester.tap(find.text('Zerar'));
    await tester.pump();

    for(int i = 0; i < 10; i++){
      expect(find.text(i.toString()), findsNWidgets(2));
    }

    for(final symbol in symbols){
      expect(find.text(symbol), findsOneWidget);
    }

    await tester.tap(find.text('4').first);
    await tester.tap(find.text('9').last);
    await tester.tap(find.text('*'));
    await tester.pump();

    expect(find.text('4'), findsNWidgets(3));
    expect(find.text('9'), findsNWidgets(3));
    expect(find.text('*'), findsNWidgets(2));

    await tester.tap(find.text('Calcular'));
    await tester.pump();

    expect(find.text('36.00'), findsNWidgets(1));
    ///
    await tester.tap(find.text('-'));
    await tester.tap(find.text('5').first);
    await tester.tap(find.text('2').last);
    await tester.pump();

    expect(find.text('5'), findsNWidgets(3));
    expect(find.text('2'), findsNWidgets(3));
    expect(find.text('-'), findsNWidgets(2));

    expect(find.text('36.00'), findsNWidgets(1));

    await tester.tap(find.text('Calcular'));
    await tester.pump();

    expect(find.text('3.00'), findsNWidgets(1));

    await tester.tap(find.text('Zerar'));
    await tester.pump();

    for(int i = 0; i < 10; i++){
      expect(find.text(i.toString()), findsNWidgets(2));
    }

    for(final symbol in symbols){
      expect(find.text(symbol), findsOneWidget);
    }

    await tester.tap(find.text('7').first);
    await tester.tap(find.text('/'));
    await tester.tap(find.text('3').last);
    await tester.pump();

    expect(find.text('7'), findsNWidgets(3));
    expect(find.text('3'), findsNWidgets(3));
    expect(find.text('/'), findsNWidgets(2));

    await tester.tap(find.text('Calcular'));
    await tester.pump();

    expect(find.text('2.33'), findsNWidgets(1));

    await tester.tap(find.text('Zerar'));
    await tester.pump();

    for(int i = 0; i < 10; i++){
      expect(find.text(i.toString()), findsNWidgets(2));
    }

    for(final symbol in symbols){
      expect(find.text(symbol), findsOneWidget);
    }

    await tester.tap(find.text('4').last);
    await tester.tap(find.text('%'));
    await tester.tap(find.text('9').first);
    await tester.pump();

    expect(find.text('9'), findsNWidgets(3));
    expect(find.text('4'), findsNWidgets(3));
    expect(find.text('%'), findsNWidgets(2));

    await tester.tap(find.text('Calcular'));
    await tester.pump();

    expect(find.text('1.00'), findsNWidgets(1));
  });
}
