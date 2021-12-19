// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity_plus/connectivity_plus.dart' as _i5;
import 'package:flutter/material.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'app.dart' as _i16;
import 'app_router.dart' as _i3;
import 'bases/base_viewmodel.dart' as _i4;
import 'components/components.dart' as _i11;
import 'components/counter_controller/counter_controller_v.dart' as _i6;
import 'components/counter_controller/counter_controller_vm.dart' as _i8;
import 'components/counter_display/counter_display_v.dart' as _i10;
import 'components/counter_display/counter_display_vm.dart' as _i12;
import 'screens/home/home_screen_vm.dart' as _i17;
import 'services/connectivity/connectivity_service.dart' as _i13;
import 'services/counter/counter_service.dart' as _i14;
import 'services/navigation/navigation_service.dart' as _i15;
import 'services/services.dart' as _i9;
import 'setup.dart' as _i18; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.singleton<_i3.AppRouter>(registerModule.appRouter);
  gh.singleton<_i4.BaseViewModel<dynamic>>(_i4.DynamicViewModel());
  gh.singleton<_i5.Connectivity>(registerModule.connectivity);
  gh.factory<_i6.CounterController>(
      () => _i6.CounterController(key: get<_i7.Key>()));
  gh.factory<_i8.CounterControllerViewModel>(() =>
      _i8.CounterControllerViewModel(
          counterService: get<_i9.ICounterService>(),
          connectivityService: get<_i9.IConnectivityService>()));
  gh.factoryParam<_i10.CounterDisplay, _i11.CounterDisplayController?, dynamic>(
      (controller, _) =>
          _i10.CounterDisplay(key: get<_i7.Key>(), controller: controller));
  gh.factory<_i12.CounterDisplayViewModel>(() =>
      _i12.CounterDisplayViewModel(counterService: get<_i9.ICounterService>()));
  gh.singleton<_i13.IConnectivityService>(
      _i13.ConnectivityService(connectivity: get<_i5.Connectivity>()));
  gh.singleton<_i14.ICounterService>(_i14.CounterService());
  gh.singleton<_i15.INavigationService>(
      _i15.NavigationService(get<_i3.AppRouter>()));
  gh.factory<_i7.Key>(() => registerModule.key);
  gh.singleton<_i16.App>(
      _i16.App(appRouter: get<_i3.AppRouter>(), key: get<_i7.Key>()));
  gh.singleton<_i17.HomeScreenViewModel>(_i17.HomeScreenViewModel(
      navigationService: get<_i15.INavigationService>()));
  return get;
}

class _$RegisterModule extends _i18.RegisterModule {
  @override
  _i5.Connectivity get connectivity => _i5.Connectivity();
  @override
  _i7.UniqueKey get key => _i7.UniqueKey();
}
