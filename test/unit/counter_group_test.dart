import 'package:github_actions_test/unit/counter.dart';
import 'package:test/test.dart';

void main() {

  group('test groups', () {
    test('Counter group test increment', () {
      final counter = Counter();
      counter.increment();
      expect(counter.value, 1);
    });

    test('Counter group test decrement', () {
      final counter = Counter();
      counter.decrement();
      expect(counter.value, -1);
    });

    test('Counter group test decrement failed', () {
      final counter = Counter();
      counter.decrement();
      expect(counter.value, 0);
    });

  });
}