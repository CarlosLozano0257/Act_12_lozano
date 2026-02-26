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
  testWidgets('App navigation smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MiAplicacion());

    // Verify that Pagina1 is shown.
    expect(find.text('inicio Carlos Lozano 6J'), findsOneWidget);
    expect(find.text('Gameshop'), findsOneWidget);
    expect(find.widgetWithText(ElevatedButton, 'Ir a Página 2'), findsOneWidget);

    // Tap the "Ir a Página 2" button and trigger a frame.
    await tester.tap(find.widgetWithText(ElevatedButton, 'Ir a Página 2'));
    await tester.pumpAndSettle(); // pumpAndSettle to wait for animations

    // Verify that we have navigated to Pagina2.
    expect(find.text('Pagina 2'), findsOneWidget);
    expect(find.text('Pantalla 2'), findsOneWidget);
  });
}
