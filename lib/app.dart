import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'app_router.dart';

@singleton
class App extends StatelessWidget {
  const App({
    required AppRouter appRouter,
    Key? key,
  })  : _appRouter = appRouter,
        super(key: key);

  final AppRouter _appRouter;

  static const _appTitle = 'Welcome to Enterprise Flutter App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: _appTitle,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
