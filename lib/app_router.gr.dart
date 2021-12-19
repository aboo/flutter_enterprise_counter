// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return CustomPage<dynamic>(
          routeData: routeData,
          child: HomeScreen(key: args.key),
          transitionsBuilder: TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    CounterRoute.name: (routeData) {
      final args = routeData.argsAs<CounterRouteArgs>(
          orElse: () => const CounterRouteArgs());
      return CustomPage<dynamic>(
          routeData: routeData,
          child: CounterScreen(key: args.key),
          transitionsBuilder: TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(HomeRoute.name, path: '/'),
        RouteConfig(CounterRoute.name, path: '/counter'),
        RouteConfig('*#redirect', path: '*', redirectTo: '/', fullMatch: true)
      ];
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<HomeRouteArgs> {
  HomeRoute({Key? key})
      : super(HomeRoute.name, path: '/', args: HomeRouteArgs(key: key));

  static const String name = 'HomeRoute';
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [CounterScreen]
class CounterRoute extends PageRouteInfo<CounterRouteArgs> {
  CounterRoute({Key? key})
      : super(CounterRoute.name,
            path: '/counter', args: CounterRouteArgs(key: key));

  static const String name = 'CounterRoute';
}

class CounterRouteArgs {
  const CounterRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'CounterRouteArgs{key: $key}';
  }
}
