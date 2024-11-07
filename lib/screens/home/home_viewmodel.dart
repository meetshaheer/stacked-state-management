import 'package:hehehehe/services/counter_service.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  CounterService counterService1 = CounterService();

  int get counter => counterService1.counter;

  incrementValue() {
    counterService1.updateCounter();
    rebuildUi();
  }
}
