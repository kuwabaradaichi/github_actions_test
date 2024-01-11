class Counter implements CounterInterface{
  int value = 0;
  CounterInterface counterInterface;

  Counter(this.counterInterface);


  void increment()  {
    value++;
  }

  void decrement() {
    value--;
  }

  @override
  int  getDB() {
    return counterInterface.getDB();
  }
}

abstract class CounterInterface {
  int getDB();
}