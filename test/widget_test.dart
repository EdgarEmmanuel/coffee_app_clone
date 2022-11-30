// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_tdd/main.dart';

void main() {


  testWidgets("it should have the home page", (WidgetTester tester) async {
    final materialWidget = MaterialApp(
      home: HomePage()
    );

    await tester.pumpWidget(materialWidget);
    await tester.pumpAndSettle();
  });



}
