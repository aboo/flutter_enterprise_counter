import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:enterprise_counter/setup.config.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'app_router.dart';

final getIt = GetIt.instance;

locateService<T extends Object>({dynamic param1}) =>
    getIt.get<T>(param1: param1);

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
@module
abstract class RegisterModule {
  static final _appRouter = AppRouter();

  @Injectable(as: Key)
  UniqueKey get key;

  @singleton
  Connectivity get connectivity;

  @singleton
  AppRouter get appRouter => _appRouter;
}

void configureDependencies() => $initGetIt(getIt);
