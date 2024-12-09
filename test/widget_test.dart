// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:myapp/main.dart';

void main() {
  group('MyApp', () {
    testWidgets('displays correct title', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
      expect(find.text('FactureProScan'), findsOneWidget); 
    });

    testWidgets('counter starts at 0', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
      expect(find.text('0'), findsOneWidget);
    });

    testWidgets('counter increments on tap', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());

      await tester.tap(find.byIcon(Icons.add));
      await tester.pump(); 

      expect(find.text('1'), findsOneWidget);
    });
  });

  group('MyHomePage', () {
    testWidgets('displays correct title in AppBar', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: MyHomePage(title: 'FactureProScan')));
      expect(find.text('FactureProScan'), findsOneWidget);
    });

    testWidgets('displays counter value', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: MyHomePage(title: 'FactureProScan')));
      expect(find.text('0'), findsOneWidget);
    });
  });
}
