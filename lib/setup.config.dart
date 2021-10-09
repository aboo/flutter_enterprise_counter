// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity_plus/connectivity_plus.dart' as _i3;
import 'package:flutter/material.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'components/components.dart' as _i5;
import 'components/counter_controller/counter_controller_v.dart' as _i4;
import 'components/counter_controller/counter_controller_vm.dart' as _i7;
import 'components/counter_display/counter_display_v.dart' as _i9;
import 'components/counter_display/counter_display_vm.dart' as _i10;
import 'services/connectivity/connectivity_service.dart' as _i11;
import 'services/counter/counter_service.dart' as _i12;
import 'services/services.dart' as _i8;
import 'setup.dart' as _i13; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.singleton<_i3.Connectivity>(registerModule.connectivity);
  gh.factory<_i4.CounterController>(() => _i4.CounterController(
      viewModel: get<_i5.CounterControllerViewModel>(), key: get<_i6.Key>()));
  gh.factory<_i7.CounterControllerViewModel>(() =>
      _i7.CounterControllerViewModel(
          counterService: get<_i8.ICounterService>(),
          connectivityService: get<_i8.IConnectivityService>()));
  gh.factory<_i9.CounterDisplay>(() => _i9.CounterDisplay(
      key: get<_i6.Key>(), viewModel: get<_i5.CounterDisplayViewModel>()));
  gh.factory<_i10.CounterDisplayViewModel>(() =>
      _i10.CounterDisplayViewModel(counterService: get<_i8.ICounterService>()));
  gh.singleton<_i11.IConnectivityService>(
      _i11.ConnectivityService(connectivity: get<_i3.Connectivity>()));
  gh.singleton<_i12.ICounterService>(_i12.CounterService());
  gh.factory<_i6.Key>(() => registerModule.key);
  return get;
}

class _$RegisterModule extends _i13.RegisterModule {
  @override
  _i3.Connectivity get connectivity => _i3.Connectivity();
  @override
  _i6.UniqueKey get key => _i6.UniqueKey();
}
