// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../ui/views/home/home_view.dart';
import '../ui/views/startup/startup_view.dart';

class Routes {
  static const String homeView = '/';
  static const String startupView = '/startup-view';
  static const all = <String>{
    homeView,
    startupView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.startupView, page: StartupView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    HomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const HomeView(),
        settings: data,
      );
    },
    StartupView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const StartupView(),
        settings: data,
      );
    },
  };
}
