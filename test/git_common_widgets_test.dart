import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:git_common_widgets/src/rating_widget.dart';
import 'package:git_common_widgets/src/text_field.dart';
import 'package:git_common_widgets/src/yes_or_no_card.dart';

void main() {
  testWidgets('CommonTextField widget test', (WidgetTester tester) async {
    // Build our widget and trigger a frame.
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: CommonTextField(label: 'Test Label', hintText: ''),
        ),
      ),
    );

    // You can write test cases for CommonTextField.
  });
  testWidgets('YesOrNoCard widget test', (WidgetTester tester) async {
    // Build our widget and trigger a frame.
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: YesOrNoCard(
            itemList: const [],
            selecteItem: '',
            act: () {},
          ),
        ),
      ),
    );

    // You can write test cases for CommonTextField.
  });
  testWidgets('RatingWidget widget test', (WidgetTester tester) async {
    // Build our widget and trigger a frame.
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: RatingWidget(
            itemList: const [],
            selecteItem: '',
            act: () {},
          ),
        ),
      ),
    );

    // You can write test cases for CommonTextField.
  });
}
