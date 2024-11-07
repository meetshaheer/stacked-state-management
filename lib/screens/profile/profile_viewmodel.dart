import 'package:hehehehe/services/counter_service.dart';
import 'package:stacked/stacked.dart';

class ProfileViewModel extends BaseViewModel {
  CounterService counterService = CounterService();

  int get counter => counterService.counter;

  incrementValue() {
    counterService.updateCounter();
    rebuildUi();
  }
}
