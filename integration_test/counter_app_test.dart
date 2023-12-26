import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_actions_test/integration/counter_app.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end-to-end', () {
    testWidgets('tap floating button, verify counter', (widgetTester) async {
      await widgetTester.pumpWidget(const CounterApp());

      expect(find.text('0'), findsOneWidget);

      final fab = find.byKey(const Key('increment'));

      await widgetTester.tap(fab);

      await widgetTester.pumpAndSettle();

      expect(find.text('1'), findsOneWidget);

    });
  });
}