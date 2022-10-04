import 'package:design_sample/feature/view/widgets/new_section_entry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:design_sample/core/utilities/constants.dart' as constants;

import '../../../../test_utilities/fixtures/widget_test_container_fixtures.dart' as widget_test_container_fixtures;
import '../../../../test_utilities/fixtures/book_fixtures.dart' as book_fixtures;

void main() {
  const int index = 0;

  Widget widgetTestContainer = widget_test_container_fixtures.getDefaultWidgetTestContainer(NewSectionEntry(
    backgroundImage: AssetImage(book_fixtures.theComputer.coverImagePath),
    title: book_fixtures.theComputer.title,
    author: book_fixtures.theComputer.author,
    releaseDate: book_fixtures.theComputer.releaseDate,
    listIndex: index,
  ));

  group('Layout representation', () {
    testWidgets('should show the predefined layout when created.', (WidgetTester tester) async {
      // (A)rrange -> all necessary preconditions and inputs.
      await tester.pumpWidget(widgetTestContainer);

      // (A)ct -> on the object or method under test.
      final titleText = find.text(book_fixtures.theComputer.title);
      final authorText = find.text(book_fixtures.theComputer.author);
      final releaseDate = find.text(book_fixtures.theComputer.releaseDate);
      final container = tester.widget<Container>(find.byKey(constants.determineImageKey(index: index)));
      String boxDecorationProperties = (container.decoration! as BoxDecoration).toString();
      final rememberMeButton = find.byType(TextButton);

      // (A)ssert -> that the expected results have occurred.
      expect(titleText, findsOneWidget);
      expect(authorText, findsOneWidget);
      expect(releaseDate, findsOneWidget);
      expect(boxDecorationProperties.contains(book_fixtures.theComputer.coverImagePath), true);
      expect(rememberMeButton, findsOneWidget);
    });
  });
}
