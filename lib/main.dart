import 'package:flutter/material.dart';
import 'package:flutter_stacked/app/app.locator.dart';
import 'package:stacked_services/stacked_services.dart';

import 'app/app.router.dart';

void main() {
  // setupLocator() will register the functions registerd in the locator in the
  // the app.locator.dart file.
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Stacked ^1.7.6',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: HomeView(),
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
    );
  }
}
