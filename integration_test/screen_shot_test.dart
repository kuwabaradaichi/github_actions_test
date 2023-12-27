import 'dart:io';
import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:github_actions_test/integration/counter_app.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets("get screenshot", (WidgetTester tester) async {
    await tester.pumpWidget(const CounterApp());

    // android only
    await binding.convertFlutterSurfaceToImage();

    // 描画が終わるのを待つ
    await tester.pumpAndSettle();
    await binding.takeScreenshot("outputs/screenshot.png");

  });

}
