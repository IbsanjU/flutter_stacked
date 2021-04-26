import 'dart:developer';

import 'package:stacked/stacked.dart';

class StartupViewModel extends BaseViewModel {
  String _title = 'Startup View';
  String get title => _title;

  int _counter = 0;
  int get counter => _counter;

  void updateCounter() {
    _counter++;
    notifyListeners();
  }
}
