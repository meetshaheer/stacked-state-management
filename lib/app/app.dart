import 'package:hahaha/services/counter_service.dart';
import 'package:stacked/stacked_annotations.dart';

@StackedApp(
  routes: [],
  dependencies: [
    Singleton(classType: CounterService),
  ],
)
class App {}
