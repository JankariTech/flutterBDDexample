import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/intl.dart' as intl;

import 'package:myapp/form_page.dart';

void main() {
  testWidgets('check current date', (WidgetTester tester) async {
    await tester.pumpWidget(FormPageWrapper());

    expect(find.byKey(Key('displayed_date')), findsOneWidget);
    DateTime date = DateTime.now();
    String dateString = intl.DateFormat.yMd().format(date);
    expect(find.text(dateString), findsOneWidget);
  });

  testWidgets('check date-edit button', (WidgetTester tester) async {
    await tester.pumpWidget(FormPageWrapper());
    await tester.tap(find.byKey(Key('date_edit_button')));
    await tester.pump();
    expect(find.text("SELECT DATE"), findsOneWidget);
    expect(find.text("October 2020"), findsOneWidget);
  });
}

class FormPageWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: FormWidgetsDemo(),
    );
  }
}