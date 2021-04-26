// Business Logic and View State (Interaction)
// NotifyListeners rebuild the constructor

import 'package:flutter_stacked/app/app.locator.dart';
import 'package:flutter_stacked/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  String _title = 'Home View';
  String get title => _title;

  int _counter = 0;
  int get counter => _counter;

  void updateCounter() {
    _counter++;
    notifyListeners();
  }

  void secondPage() {
    _navigationService.navigateTo(Routes.startupView);
  }
}
