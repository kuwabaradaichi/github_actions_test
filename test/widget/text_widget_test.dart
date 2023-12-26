import 'package:flutter_test/flutter_test.dart';
import 'package:github_actions_test/widget/text_widget.dart';

void main() {
  testWidgets('TextWidget test', (widgetTester) async {
    await widgetTester.pumpWidget(const TextWidget(title: 'TITLE', message: 'MESSAGE'));

    final titleFinder = find.text('TITLE');
    final messageFinder = find.text("MESSAGE");

    expect(titleFinder, findsOneWidget);
    expect(messageFinder, findsOneWidget);
  });

}