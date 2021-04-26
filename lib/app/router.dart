// To auto generate the auto routes
// flutter pub run build_runner build

import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter_stacked/ui/views/home/home_view.dart';
import 'package:flutter_stacked/ui/views/startup/startup_view.dart';

@autoRouter
class $Router {
  @initial
  StartupView startupViewRoute;
  HomeView homeViewRoute;
}
