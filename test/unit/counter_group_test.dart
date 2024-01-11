import 'package:github_actions_test/unit/counter.dart';
import 'package:test/test.dart';

class MockInterface implements CounterInterface {
  @override
  int getDB() {
    return 20;
  }
}

void main() {

  group('test groups', () {
    test('Counter group test increment', () {
      final counter = Counter(MockInterface());
      counter.increment();
      expect(counter.value, 1);

      counter.getDB();
    });

    test('Counter group test decrement', () {
      final counter = Counter(MockInterface());
      counter.decrement();
      expect(counter.value, -1);
    });

    test('Counter group test decrement failed', () {
      final counter = Counter(MockInterface());
      counter.decrement();
      expect(counter.value, 0);
    });

  });
}