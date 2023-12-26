import 'package:github_actions_test/unit/counter.dart';
import 'package:test/test.dart';

void main() {
  test('Counter test', () {
      final counter = Counter();
      counter.increment();
      expect(counter.value, 1);
  });
}