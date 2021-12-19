import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'screens/screens.dart';

part 'app_router.gr.dart';

abstract class Routes {
  static const root = '/';
  static const counter = '/counter';
}

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    CustomRoute(
      page: HomeScreen,
      initial: true,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: CounterScreen,
      path: Routes.counter,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    RedirectRoute(path: '*', redirectTo: '/')
  ],
)
class AppRouter extends _$AppRouter {}
