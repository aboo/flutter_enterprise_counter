import 'package:injectable/injectable.dart';

import '../../app_router.dart';

abstract class INavigationService {
  Future<void> navigateTo({required String path});
}

@Singleton(as: INavigationService)
class NavigationService extends INavigationService {
  NavigationService(this._appRouter);

  final AppRouter _appRouter;

  @override
  Future<void> navigateTo({required String path}) {
    return _appRouter.pushNamed(path);
  }
}
